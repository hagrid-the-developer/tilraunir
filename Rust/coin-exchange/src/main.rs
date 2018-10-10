fn change(amount: u32, coins: &[u32]) -> u32
{
    const M: u32 = std::u32::MAX;
    let mut res: Vec<u32> = vec![M; (amount + 1) as usize];
    res[0] = 0;
    for val in 1..amount+1 {
        if let Some(count) = coins.iter().filter(|&&x| x <= val).map(|&x| res[(val - x) as usize]).min() {
            res[val as usize] = count + 1;
        }
    }
    return res[amount as usize];
}

fn main() {
    let coins = [1, 3, 9, 10];
    println!("res: {}", change(15, &coins[..]));
}
