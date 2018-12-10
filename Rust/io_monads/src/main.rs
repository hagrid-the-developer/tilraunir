use std::io;

// do-notation is unfortunatelly hypothetical only... :-(

fn logging_on() -> Result<bool, io::Error> {
    Err(std::io::Error::new(std::io::ErrorKind::Other, "failure!"))
}

fn read_values() -> Result<u32, io::Error> {
    Err(std::io::Error::new(std::io::ErrorKind::Other, "failure!"))
}

fn log_values(values: &u32) -> Result<(), io::Error> {
    Err(std::io::Error::new(std::io::ErrorKind::Other, "failure!"))
}

fn main() {
    do {
        data <- read_values();
        log  <- logging_on();
    
        if log {
            log_values(data)
        } else {
            Ok(())
        };
    
        Ok(data)
    };

    println!("Hello, world!");
}
