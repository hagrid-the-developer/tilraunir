fn naive(a: &[u32]) -> usize {
    a.iter().enumerate().map(|(i, val)| { a.iter().skip(i + 1).filter(|&x| x < val).count() }).sum()
}

fn main() {
    let arr = [25, 3, 9, 16, 1];
    println!("Naive: {}", naive(&arr[..]));
}
