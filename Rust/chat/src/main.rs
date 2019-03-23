extern crate tokio;

use tokio::prelude::*;
use tokio::net::TcpListener;

fn main() {
    // Bind the server's socket.
    let addr = "127.0.0.1:12345".parse().unwrap();
    let listener = TcpListener::bind(&addr)
        .expect("unable to bind TCP listener");

    // Pull out a stream of sockets for incoming connections
    let server = listener.incoming()
        .map_err(|e| eprintln!("accept failed = {:?}", e))
        .for_each(|sock| {
            // Split up the reading and writing parts of the
            // socket.
            let (reader, writer) = sock.split();
            let r = std::io::BufReader::new(reader);
            // A future that echos the data and returns how
            // many bytes were copied...
            //let bytes_copied = copy(reader, writer);

            let handle_read = tokio::io::read_until(r, b'\n', vec![]).and_then(|(_, buf)| {
                println!("Read {:} bytes", buf.len());
                return Ok(());
            }).map_err(|err| {
                eprintln!("IO error {:?}", err)
            });
            /*
            // ... after which we'll print what happened.
            let handle_conn = bytes_copied.map(|amt| {
                println!("wrote {:} bytes", amt.0)
            }).map_err(|err| {
                eprintln!("IO error {:?}", err)
            });
            */

            // Spawn the future as a concurrent task.
            tokio::spawn(handle_read)
        });

    // Start the Tokio runtime
    tokio::run(server);
}