use std::io::BufRead;

static NAMES_X1000: &'static [&'static str] = &[ "", "thousand", "million", "milliard" ];
static NAMES_X10: &'static [&'static str] = &[ "", "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty" ];
static NAMES_TEEN: &'static [&'static str] = &[ "ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen" ];
static NAMES_X1: &'static [&'static str] = &[ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten" ];

// Similar to 1000^n
static EXP1000: &'static [usize] = &[0, 1_000, 1_000_000, 1_000_000_000];

fn smaller_than_1000(num: usize) {
    let x100 = num/100;
    if x100 > 0 {
        print!("{} hundred", NAMES_X1[x100])
    }

    let x10 = (num - 100*x100)/10;
    let x1 = num - 100*x100 - 10*x10;
    if (x10 > 0 || x1 > 0) && x100 > 0 {
        print!(" and ");
    }

    if x10 == 1 {
        print!("{}", NAMES_TEEN[x1]);
    } else if x10 > 1 {
        print!("{}", NAMES_X10[x10]);
        if x1 > 0 {
            print!(" ");
            print!("{}", NAMES_X1[x1]);
        }
    } else if x1 > 0 {
        print!("{}", NAMES_X1[x1]);
    }
}

fn human(num: usize) {
    if num == 0 {
        println!("zero");
        return;
    }

    let mut x = num;
    let mut print_space = false;
    for i in (0..4).rev() {
        let val = if i > 0 { x / EXP1000[i] } else { x };
        if val > 0 {
            if print_space {
                print!(", ");
            }
            smaller_than_1000(val);
            print!(" {}", NAMES_X1000[i]);
            print_space = true;
        }
        x = x - val * EXP1000[i];
    }
    println!();
}

fn main() {
    let stdin = std::io::stdin();
    let reader = std::io::BufReader::new(stdin);
    for line in reader.lines() {
        match line {
            Err(e) => {println!("Cannot read input line: {}", e); }
            Ok(l) => {
                match l.parse::<u32>() {
                    Err(e) => { println!("Cannot parse '{}' : {}", l, e); }
                    Ok(n) => { human(n as usize); }
                }
            }
        }
    }
}
