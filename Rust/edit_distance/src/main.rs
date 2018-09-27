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

// I wanted to do something like this:
//   let prev = &tab[(i - 1) % 2];
//   let act = &mut tab[i % 2];
//
// But it seems that Rust doesn't allow to access
//   one object with two references (where one is mutable),
//   even if the references access different parts of the object.

fn edit_distance(s1: &str, s2: &str) -> usize {
    let len1 = s1.chars().count();
    let len2 = s2.chars().count();

    // Table with all items isn't necessary
    let mut tab = vec![vec![0usize; len1]; 2];

    for j in 1..len1 {
        tab[0][j] = j;
    }
    for (i, c2) in s2.chars().enumerate().skip(1) {
        let idx_prev = (i - 1) % 2;
        let idx_act = i % 2;

        tab[idx_act][0] = i;

        for (j, c1) in s1.chars().enumerate().skip(1) {
            tab[idx_act][j] = {
                let prev = &tab[idx_prev][..];
                let act = &tab[idx_act][..];

                if c1 == c2 {
                    prev[j - 1]
                } else {
                    let x = std::cmp::min(prev[j], act[j - 1]);
                    let y = prev[j - 1];
                    1 + std::cmp::min(x, y)
                }
            }
        }
    }

    tab[(len2 - 1) % 2][len1 - 1]
}

fn edit_distance_zip(s1: &str, s2: &str) -> usize {
    let len1 = s1.chars().count();
    let len2 = s2.chars().count();

    let mut tab = vec![vec![0usize; len1]; 2];

    for j in 1..len1 {
        tab[0][j] = j;
    }
    for (c2, i) in s2.chars().skip(1).zip(1usize..) {
        let idx_prev = (i - 1) % 2;
        let idx_act = i % 2;

        tab[idx_act][0] = i;

        for (c1, j) in s1.chars().skip(1).zip(1usize..) {
            tab[idx_act][j] = {
                let prev = &tab[idx_prev][..];
                let act = &tab[idx_act][..];

                if c1 == c2 {
                    prev[j - 1]
                } else {
                    let x = std::cmp::min(prev[j], act[j - 1]);
                    let y = prev[j - 1];
                    1 + std::cmp::min(x, y)
                }
            }
        }
    }

    tab[(len2 - 1) % 2][len1 - 1]
}

fn main() {
    println!("{}", edit_distance("Saturday", "Sunday"));
    println!("{}", edit_distance_zip("Saturday", "Sunday"));
}
