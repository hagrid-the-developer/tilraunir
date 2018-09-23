// * https://www.programming-idioms.org/idiom/26/create-a-2-dimensional-array/448/rust

fn edit_distance(s1: &str, s2: &str) -> usize {
    let len1 = s1.chars().count();
    let len2 = s2.chars().count();

    let mut tab = vec![vec![0usize; len1]; len2];

    for j in 1..len2 {
        tab[0][j] = j;
    }
    for (i, c2) in s2.chars().skip(1).enumerate() {
        tab[i][0] = i;
        for (j, c1) in s1.chars().skip(1).enumerate() {
            tab[i][j] = if c1 == c2 {
                tab[i - 1][j - 1]
            } else {
                let x = std::cmp::min(tab[i - 1][j], tab[i][j - 1]);
                let y = tab[i - 1][j - 1];
                1 + std::cmp::min(x, y)
            }
        }
    }

    tab[len1 - 1][len2 - 1]
}

fn main() {
    println!("{}", edit_distance("Saturday", "Sunday"));
}
