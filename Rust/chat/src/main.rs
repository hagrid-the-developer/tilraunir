// FIXME: drf: This is only a quic fix to make the function parse visible
mod cmd_line_args;

extern crate futures;
extern crate resolve;
extern crate tokio;
extern crate tokio_codec;
extern crate tokio_core;

use std::io::BufRead;
use tokio::net::TcpListener;
use tokio::prelude::*;

#[derive(Debug)]
enum Error {
    Stdin(std::io::Error),
    Channel(futures::sync::mpsc::SendError<String>),
}

fn main() {
    let receiver = std::sync::Arc::new(std::sync::Mutex::new(
        None::<futures::sync::mpsc::UnboundedSender<String>>,
    ));
    let recv_srv = std::sync::Arc::clone(&receiver);
    let recv_close = std::sync::Arc::clone(&receiver);

    std::thread::spawn(move || {
        let stdin = std::io::stdin();
        let stdin_lock = stdin.lock();
        futures::stream::iter(stdin_lock.lines())
            .map_err(Error::Stdin)
            .for_each(|line| {
                let recv_sink_opt = receiver.lock().unwrap();
                match recv_sink_opt.as_ref() {
                    None => {
                        eprintln!("Message will be skipped :-(");
                        Ok(())
                    }
                    Some(recv_sink) => {
                        recv_sink
                            .clone()
                            .send(line)
                            .map(|_| ())
                            .map_err(|err| {
                                std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err))
                            })
                            .wait()
                            .unwrap();
                        Ok(())
                    }
                }
            })
            .wait()
            .unwrap();
    });

    let handle_sock_fn = move |sock| {
        let mut tx_opt = recv_srv.lock().unwrap();
        match *tx_opt {
            Some(_) => {
                eprintln!("Another client already connected!");
            }
            None => {
                let framed_sock = tokio_codec::Framed::new(sock, tokio_codec::LinesCodec::new());
                let (tx, rx) = framed_sock.split();
                let (ch_tx, ch_rx) = futures::sync::mpsc::unbounded::<String>();

                *tx_opt = Some(ch_tx.clone());

                tokio::spawn(
                    tx.send_all(ch_rx.map_err(|err| {
                        std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err))
                    })).then(|_| Err(())),
                );

                let mtx = recv_close.clone();
                tokio::spawn(
                    rx.for_each(move |item| {
                        println!("Received message of length: {}", item.len());
                        println!("Received message: {}", item);
                        let first = if item.len() > 0 { item.as_bytes()[0] } else { 0 };
                        // FIXME: drf: Return future, don't wait. Since we are sending to unbound channel, it probably doesn't make so big difference.
                        if first != b'!' {
                        } else {
                            ch_tx.clone().send(format!("!Message of length: {:?}", item.len())).map(|_| ()).map_err(|err| {
                                std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err));
                            }).wait().unwrap();
                        }
                        Ok(())
                    }).map(move |res| {
                            let mut tx_guard = mtx.lock().unwrap();
                            *tx_guard = None;
                            res
                        })
                        .map_err(|err| eprintln!("IO error {:?}", err)),
                );
            }
        };
        Ok(())
    };

    let args = match cmd_line_args::parse() {
        Err(e) => panic!("Cannot parse cmd-line: {:?}", e),
        Ok(a) => a,
    };

    // FIXME: drf: Try to connect/bind to more addresses.
    let addr = args.addrs[0];

    if args.role == cmd_line_args::Role::Server {
        let listener = TcpListener::bind(&addr).expect("unable to bind TCP listener");

        let server = listener
            .incoming()
            .map_err(|e| eprintln!("accept failed = {:?}", e))
            .for_each(move |sock| handle_sock_fn(sock));

        // Start the Tokio runtime
        tokio::run(server);
    } else {
        // https://stackoverflow.com/questions/51381363/how-can-i-send-a-stream-of-data-using-tokios-tcpstream
        // https://stackoverflow.com/questions/46836933/how-can-i-read-from-a-tokio-tcp-connection-without-using-the-tokio-proto-crate
        //let mut core = Core::net().unwrap();
        let connection = tokio::net::TcpStream::connect(&addr);
        let client = connection
            .map_err(|e| eprintln!("accept failed = {:?}", e))
            .and_then(move |tcp_stream| handle_sock_fn(tcp_stream));

        // Start the Tokio runtime
        tokio::run(client);
    };
}
