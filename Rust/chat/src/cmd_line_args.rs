use std::env::args;
use std::net::SocketAddr;
use std::result::Result;

#[derive(PartialEq, Eq)]
pub enum Role {
    Client,
    Server,
}

pub struct ParsedArgs {
    pub role: Role,
    pub addr: SocketAddr,
}

pub fn parse() -> Result<ParsedArgs, &'static str> {
    let args: Vec<_> = args().skip(1).collect();
    if args.len() != 2 {
        return Err("Expected two cmd-line arguments: <client|server> <address>");
    }

    let role = if args[1] == "client" {
        Role::Client
    } else if args[1] == "server" {
        Role::Server
    } else {
        return Err("Unknown role");
    };

    let ip_addr = match args[2].parse() {
        Ok(a) => a,
        Err(_) => return Err("Cannot parse address.")
    };

    return Ok(ParsedArgs{role: role, addr: ip_addr});
}