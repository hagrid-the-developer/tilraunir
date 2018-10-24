fn naive(a: &[u32]) -> usize {
    a.iter().enumerate().map(|(i, val)| { a.iter().skip(i + 1).filter(|&x| x < val).count() }).sum()
}


// Contains unnecessary copies and allocation, but helps me to learn
//   something new about vectors and slices.
fn efficient(a: &[u32]) -> usize {
    fn sort(a: &mut[u32], f: usize, l: usize) -> usize{
        if l - f <= 1 {
            0
        } else {
            let mid = (f + l)/2;
            let mut count: usize = sort(a, f, mid) + sort(a, mid, l);
            let mut i = f;
            let mut j = mid;
            let mut dst = Vec::new();
            while i < mid && j < l {
                if a[i] > a[j] {
                    count += mid - i;
                    dst.push(a[j]);
                    j += 1;
                } else {
                    dst.push(a[i]);
                    i += 1;
                }
            }
            while i < mid {
                dst.push(a[i]);
                i += 1;
            }
            while j < l {
                dst.push(a[j]);
                j += 1;
            }
            a[f..l].copy_from_slice(&dst);

            count
        }

    }

    let mut dst =  Vec::new();
    dst.resize(a.len(), 0u32);
    dst.copy_from_slice(a);
    sort(&mut dst[..], 0, a.len())
}

fn main() {
    let arr = [25, 3, 9, 16, 1];
    println!("Naive: {}", naive(&arr[..]));
    println!("Efficient: {}", efficient(&arr[..]));
}
