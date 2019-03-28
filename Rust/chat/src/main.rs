extern crate futures;
extern crate tokio;
extern crate tokio_codec;

use std::io::BufRead;
use tokio::prelude::*;
use tokio::net::TcpListener;

#[derive(Debug)]
enum Error {
    Stdin(std::io::Error),
    Channel(futures::sync::mpsc::SendError<String>),
}


// FIXME: drf: Don't we use a temporary copy of std::option when assigning None/Stream to it?


fn main() {
    // Bind the server's socket.
    let addr = "127.0.0.1:12345".parse().unwrap();
    let listener = TcpListener::bind(&addr)
        .expect("unable to bind TCP listener");


    let receiver = std::sync::Arc::new(std::sync::Mutex::new(None::<futures::sync::mpsc::UnboundedSender<String>>));
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
                        recv_sink.clone().send(line).map(
                            |_| ()
                        ).map_err(|err| {
                            std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err))
                        }).wait().unwrap();
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
            },
            None => {
                let framed_sock = tokio_codec::Framed::new(sock, tokio_codec::LinesCodec::new());
                let (tx, rx) = framed_sock.split();
                let (ch_tx, ch_rx) = futures::sync::mpsc::unbounded::<String>();

                *tx_opt = Some(ch_tx.clone());

                tokio::spawn(
                    tx.send_all(
                        ch_rx.map_err(|err|{ std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err)) })
                    ).then(
                        |_| Err(())
                    )
                );

                let mtx = recv_close.clone();
                tokio::spawn(
                    rx.for_each(move |item| {
                        println!("Received message of length: {}", item.len());
                        ch_tx.clone().send(item).map(
                            |_| ()
                        ).map_err(|err| {
                            std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err))
                        })
                    }).map(move |res| {
                        let mut tx_guard = mtx.lock().unwrap();
                        *tx_guard = None;
                        res
                    }).map_err(|err| {
                        eprintln!("IO error {:?}", err)
                    })
                );
            }
        };
        Ok(())
    };

    let server = listener.incoming()
        .map_err(|e| eprintln!("accept failed = {:?}", e))
        .for_each(move |sock| {
            handle_sock_fn(sock)
        });

    // Start the Tokio runtime
    tokio::run(server);
}