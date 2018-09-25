// * https://www.programming-idioms.org/idiom/26/create-a-2-dimensional-array/448/rust
// * https://doc.rust-lang.org/std/iter/trait.Iterator.html
// * https://doc.rust-lang.org/std/primitive.str.html
// * https://doc.rust-lang.org/std/index.html

// Indexing vector of vectors:
//  vec[i][j]
//    v = vec![vec![0usize; len1]; len2];
//    v is a vector of length len2 that contains vectors of length len1
//    v[i] -- returns i-th vector, i \in [0, len2)
//    v[i][j] -- returns j-th item in i-th vector, j \in [0, len1)

fn edit_distance(s1: &str, s2: &str) -> usize {
    let len1 = s1.chars().count();
    let len2 = s2.chars().count();

    // Table with all items isn't necessary
    let mut tab = vec![vec![0usize; len1]; len2];

    for j in 1..len1 {
        tab[0][j] = j;
    }
    for (i, c2) in s2.chars().enumerate().skip(1) {
        tab[i][0] = i;
        for (j, c1) in s1.chars().enumerate().skip(1) {
            tab[i][j] = if c1 == c2 {
                tab[i - 1][j - 1]
            } else {
                let x = std::cmp::min(tab[i - 1][j], tab[i][j - 1]);
                let y = tab[i - 1][j - 1];
                1 + std::cmp::min(x, y)
            }
        }
    }

    tab[len2 - 1][len1 - 1]
}

fn edit_distance_zip(s1: &str, s2: &str) -> usize {
    let len1 = s1.chars().count();
    let len2 = s2.chars().count();

    // Table with all items isn't necessary
    let mut tab = vec![vec![0usize; len1]; len2];

    for j in 1..len1 {
        tab[0][j] = j;
    }
    for (c2, i) in s2.chars().skip(1).zip(1usize..) {
        tab[i][0] = i;
        for (c1, j) in s1.chars().skip(1).zip(1usize..) {
            tab[i][j] = if c1 == c2 {
                tab[i - 1][j - 1]
            } else {
                let x = std::cmp::min(tab[i - 1][j], tab[i][j - 1]);
                let y = tab[i - 1][j - 1];
                1 + std::cmp::min(x, y)
            }
        }
    }

    tab[len2 - 1][len1 - 1]
}

fn main() {
    println!("{}", edit_distance("Saturday", "Sunday"));
    println!("{}", edit_distance_zip("Saturday", "Sunday"));
}
