fn change(amount: u32, coins: &[u32]) -> u32 {
    const M: u32 = std::u32::MAX;
    let mut res: Vec<u32> = vec![M; (amount + 1) as usize];
    res[0] = 0;
    for val in 1..amount + 1 {
        if let Some(count) = coins
            .iter()
            .filter(|&&x| x <= val)
            .map(|&x| res[(val - x) as usize])
            .min()
        {
            res[val as usize] = count + 1;
        }
    }
    return res[amount as usize];
}

mod tests {
    use super::*;

    #[test]
    fn fixed_array() {
        let coins = [1, 3, 9, 10];
        assert_eq!(change(25, &coins[..]), 4); // 10+9+2*3
        assert_eq!(change(15, &coins[..]), 3);
        assert_eq!(change(15, &coins[..3]), 3);
        assert_eq!(change(15, &coins[..2]), 5);
        assert_eq!(change(15, &coins[..1]), 15);
    }
}

fn main() {
    let coins = [1, 3, 9, 10];
    println!("res: {}", change(15, &coins[..]));
}
