static PRIMES: [u32; 6] = [2, 3, 5, 7, 11, 13];

fn divisible(num: u32) -> bool {
    for x in &PRIMES {
        if num % x == 0 {
            return true;
        }
    }
    return false;
}

fn exists(maximum: u32) -> u32 {
    let m: u32 = 1;

    let mut div_nums = (m..m + 21).map(|x| { divisible(x) } ).collect::<Vec<bool>>();

    let mut num = div_nums.iter().filter(|&&x| { x }).count();

    for m in m+1..maximum {
        let x = m + 21 - 1;
        let idx = ( (x - 1) % 21 ) as usize;
        //println!("{}, {}, {}", num, idx, m);
        num -= if div_nums[idx] { 1 } else { 0 };
        let new = divisible(x);
        num += if new { 1 } else { 0 };
        if num == 21 {
            return m;
        }
        div_nums[idx] = new;
    }
    return 0;
}

fn main() {
    println!("Hello, world!: {}", exists(100000));
}
