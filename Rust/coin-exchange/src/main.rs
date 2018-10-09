fun change(amount: u32, coins: &[u32])
{
    let m = std::u32::MAX;
    let mut res = [amount + 1; m];
    res[0] = 0;
    for val in (1..amount) {
        let count = coins.iter().map(|x| { if (x <= val) { res[x - val] } else { m } }).min();
        if (count < m) {
            res[va] = count + 1;
        }
    }
    return res[amount];
}

fn main() {
    let coins = [1, 3, 9, 10];
    println!("res: ", change(15, coins[..));
}
