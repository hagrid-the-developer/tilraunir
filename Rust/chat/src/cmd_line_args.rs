use std::env::args;
use std::net::SocketAddr;
use std::net::ToSocketAddrs;
use std::result::Result;
use resolve::resolve_host;

#[derive(PartialEq, Eq)]
pub enum Role {
    Client,
    Server,
}

pub struct ParsedArgs {
    pub role: Role,
    pub addrs: Vec<SocketAddr>,
}

pub fn parse() -> Result<ParsedArgs, &'static str> {
    let args: Vec<_> = args().skip(1).collect();
    if args.len() != 2 {
        return Err("Expected two cmd-line arguments: <client|server> <address>");
    }

    let role = if args[0] == "client" {
        Role::Client
    } else if args[0] == "server" {
        Role::Server
    } else {
        return Err("Unknown role");
    };

    let ip_addrs: Vec<_> = match args[1].to_socket_addrs() {
        Ok(a) => a.collect(),
        Err(_) => return Err("Cannot parse host/address")
    };

    if ip_addrs.len() == 0 {
        return Err("Empty list of addresses");
    }

    return Ok(ParsedArgs{role: role, addrs: ip_addrs});
}