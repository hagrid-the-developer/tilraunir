use num::{FromPrimitive, ToPrimitive};
use num_traits::Num;
use std::vec::Vec;

pub fn slow<T: Num + Clone + Copy + Ord>(x: &[T]) -> T {
    if x.len() == 0 {
        T::zero()
    } else {
        let mut a = x.to_vec();
        a.sort();
        if a[0] > T::zero() {
            T::zero()
        } else {
            a.iter()
                .zip(a.iter().skip(1).chain([T::zero()].iter()))
                .find(|(ref x, ref y)| **y != **x + T::one())
                .map(|(x, _)| *x + T::one())
                .unwrap()
        }
    }
}

pub fn fast<T: Num + FromPrimitive + ToPrimitive + Clone + Copy + Ord>(x: &[T]) -> T {
    let mut m = vec![false; x.len() + 1];
    let l = T::from_usize(x.len()).unwrap();
    for item in x.iter() {
        if *item < l {
            m[item.to_usize().unwrap()] = true;
        }
    }
    T::from_usize(m.iter().position(|&x| !x).unwrap()).unwrap()
}

mod tests {
    use super::*;

    #[test]
    fn basic() {
        for func in [slow, fast].iter() {
            let v_empty: Vec<u32> = vec![];
            assert_eq!(func(&v_empty), 0);

            let v0 = vec![0, 4, 3, 1];
            assert_eq!(func(&v0), 2);

            let v1 = vec![0, 4, 3, 2, 1];
            assert_eq!(func(&v1), 5);

            let v2 = vec![0, 4, 1, 4, 3];
            assert_eq!(func(&v2), 2);
        }
    }
}
