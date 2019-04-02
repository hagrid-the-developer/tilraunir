extern crate bytes;
extern crate futures;
extern crate resolve;
extern crate tokio;
extern crate tokio_codec;
extern crate tokio_core;

mod cmd_line_args;

use bytes::Bytes;
use std::io::BufRead;
use tokio::net::TcpListener;
use tokio::prelude::*;

/* Very simple binary protocol is used (it has already some support in Rust):
 *  4 bytes: message length
 *  1byte: message type: 'M' -- message, '!' -- acknowledgment
 *
 * Better protocol: Often, one byte is enough for both message type and message length:
 *   1bit: message type
 *   7 bits: 0 .. 123 -- message length
 *           124 -- message length is stored in a next byte
 *           125 -- message length is stored in next two bytes
 *           126 -- message length is stored in next three bytes
 *           127 -- message length is stored in next four bytes
 */



fn to_stdio_err<E: std::error::Error>(e: &E) -> std::io::Error {
    std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", e))
}

fn string_to_message(s: String, t: u8) -> Bytes {
    let mut ret = Bytes::with_capacity(1 + s.len());
    let t_arr: [u8; 1] = [t; 1];
    ret.extend_from_slice(&t_arr);
    ret.extend_from_slice(&s.into_bytes());
    return ret;
}

fn print_message(msg: Bytes) {
    match String::from_utf8(msg.to_vec()) {
        Ok(s) => println!("Text message: {}", s),
        Err(_) => println!("Binary message: {:?}", msg),
    }
}

// FIXME: drf: It seems that send sometimes aborts.
fn main() {
    let receiver = std::sync::Arc::new(std::sync::Mutex::new(
        None::<futures::sync::mpsc::UnboundedSender<Bytes>>,
    ));
    let recv_srv = std::sync::Arc::clone(&receiver);
    let recv_close = std::sync::Arc::clone(&receiver);

    std::thread::spawn(move || {
        let stdin = std::io::stdin();
        let stdin_lock = stdin.lock();
        futures::stream::iter(stdin_lock.lines())
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
                            .send(string_to_message(line, b'M'))
                            .map(|_| ())
                            .map_err(|err| to_stdio_err(&err))
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
                let framed_sock = tokio_codec::Framed::new(
                    sock,
                    tokio::codec::length_delimited::LengthDelimitedCodec::new(),
                );
                let (tx, rx) = framed_sock.split();
                let (ch_tx, ch_rx) = futures::sync::mpsc::unbounded::<Bytes>();

                *tx_opt = Some(ch_tx.clone());

                tokio::spawn(
                    tx.send_all(ch_rx.map_err(|err| {
                         std::io::Error::new(std::io::ErrorKind::Other, format!("{:?}", err))
                    })).then(|_| Err(()))
                );

                let mtx = recv_close.clone();
                tokio::spawn(
                    rx.for_each(move |item_mut| {
                        let item = item_mut.freeze();
                        let first = if item.len() > 0 { item[0] } else { 0 };
                        print_message(item.slice_from(0));
                        if first == b'M' {
                            futures::future::Either::A(
                                ch_tx
                                    .clone()
                                    .send(string_to_message(format!("Message of length: {:?}", item.len() - 1), b'!'))
                                    .map(|_| ())
                                    .map_err(|err| to_stdio_err(&err)),
                            )
                        } else {
                            futures::future::Either::B(futures::future::ok(()))
                        }
                    })
                    .map(move |res| {
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
    println!("Reolved address: {:?}", addr);

    // FIXME: drf: How to connect/bind to multiple addresses.
    if args.role == cmd_line_args::Role::Server {
        let listener = TcpListener::bind(&addr).expect("unable to bind TCP listener");

        let server = listener
            .incoming()
            .map_err(|e| eprintln!("accept failed = {:?}", e))
            .for_each(move |sock| handle_sock_fn(sock));

        // Start the Tokio runtime
        tokio::run(server);
    } else {
        let connection = tokio::net::TcpStream::connect(&addr);
        let client = connection
            .map_err(|e| eprintln!("accept failed = {:?}", e))
            .and_then(move |tcp_stream| handle_sock_fn(tcp_stream));

        // Start the Tokio runtime
        tokio::run(client);
    };
}
