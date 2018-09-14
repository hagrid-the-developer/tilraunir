extern crate regex;

use std::env;
use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;
use regex::Regex;

static LENGTHS: [u64; 11] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1534];

// I really love tagged unions
#[derive(Debug)]
enum LineType {
    NewSeries,
    DownloadThroughput(f64),
    UploadThroughput(f64),
    ContentLength(u64),
    TotalTime(f64)
}

struct Items {
    put_throughputs: Vec<f64>,
    get_throughputs: Vec<f64>,
    total_time: f64,
    request_length: u64
}

fn report(items: &Items) {
    let down_speed: f64 = items.get_throughputs.iter().skip(1).sum();
    let up_speed: f64 = items.put_throughputs.iter().skip(1).sum();
    let len = items.get_throughputs.len() - 1;

    println!("    length: {}MB", items.request_length/(1024*1024));
    if up_speed > 0.0 {
        println!("        Upload speed: {:.3}Mbit/s", up_speed/(len as f64));
    } else {
        println!("        Download speed: {:.3}Mbit/s", down_speed/(len as f64));
    }
    println!("        Avg req time: {:.3}s", items.total_time/(len as f64));
}

fn parse_line(line: &String) -> Option<LineType> {
    let upload_re = Regex::new(r"Average upload throughput: ([0-9]+[.][0-9]*) Mbit[/]s").unwrap();
    let up = upload_re.captures(line);
    match up {
        None => {},
        Some(ref g) => return Some(LineType::UploadThroughput(g.get(1).unwrap().as_str().parse().unwrap()))
    }

    let download_re = Regex::new(r"Average download throughput: ([0-9]+[.][0-9]*) Mbit[/]s").unwrap();
    let down = download_re.captures(line);
    match down {
        None => {},
        Some(ref g) => return Some(LineType::DownloadThroughput(g.get(1).unwrap().as_str().parse().unwrap()))
    }

    let content_re = Regex::new(r"content-length:([0-9]+)").unwrap();
    let cont = content_re.captures(line);
    match cont {
        None => {},
        Some(ref g) => return Some(LineType::ContentLength(g.get(1).unwrap().as_str().parse().unwrap()))
    }

    let total_time_re = Regex::new(r"real\s+(\d+)m(\d+[.]\d+)s").unwrap();
    let total_time = total_time_re.captures(line);
    match total_time {
        None => {},
        Some(ref g) => {
            let min: f64  = g.get(1).unwrap().as_str().parse().unwrap();
            let sec: f64 = g.get(2).unwrap().as_str().parse().unwrap();
            return Some(LineType::TotalTime(60.0*min+sec))
        }
    }

    let new_series_re = Regex::new(r"[*]{20}").unwrap();
    if new_series_re.is_match(line) {
        return Some(LineType::NewSeries);
    }

    return None;
}

// Parsing of RE is extremely slow, but !lazy_static and regex! macros
// didn't work in my setup.
fn process_file(description: String, file_path: String) {
    println!("{}", description);

    let f = File::open(file_path).expect("File not found");

    let mut items = Items{
        get_throughputs: Vec::new(),
        put_throughputs: Vec::new(),
        total_time: 0.0,
        request_length: 0
    };


    let mut len_idx = 0;
    for line in BufReader::new(&f).lines() {
        let l = line.unwrap();
        let lt = parse_line(&l);

        match lt {
            None => {},
            Some(ref d) => match d {
                LineType::NewSeries => {
                    items.get_throughputs.clear();
                    items.put_throughputs.clear();
                    items.total_time = 0.0;
                    items.request_length = LENGTHS[len_idx] * 1024 * 1024;
                },
                LineType::DownloadThroughput(t) => {
                    items.get_throughputs.push(*t);
                },
                LineType::UploadThroughput(t) => {
                    items.put_throughputs.push(*t);
                },
                LineType::ContentLength(l) => {
                    if *l >= 1024 * 1024 {
                        items.request_length = *l;
                    }
                },
                LineType::TotalTime(t) => {
                    len_idx += 1;
                    items.total_time = *t;
                    report(&items);
                }
            }
        }
    }
}


fn main() {
    let args: Vec<String> = env::args().collect();

    for x in args.iter().skip(1).step_by(2).zip(args.iter().skip(2).step_by(2)) {
        process_file(x.0.to_string(), x.1.to_string());
    }
}
