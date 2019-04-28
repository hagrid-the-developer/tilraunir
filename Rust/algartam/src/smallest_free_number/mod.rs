use num::{FromPrimitive, ToPrimitive};
use num_traits::sign::Unsigned;

// TODO: FIXME: Handle cases when the result doesn't fit to T.
pub fn slow<T: Unsigned + Clone + Copy + Ord>(x: &[T]) -> T {
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

// TODO: FIXME: Handle cases when the result doesn't fit to T, use better error handling, not unwrap().
//   - Check that from_usize(), to_usize() worked or should always work.
pub fn fast<T: Unsigned + FromPrimitive + ToPrimitive + Clone + Copy + Ord>(x: &[T]) -> T {
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
    use std::vec::Vec;
    use rand;
    use rand::prelude::*;
    use std::fmt::Debug;
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

    fn run_rnd<T: Unsigned + FromPrimitive + ToPrimitive + Clone + Copy + Ord + Debug>() where rand::distributions::Standard: rand::distributions::Distribution<T> {
        let len = random::<usize>() % 128_000;
        let v: Vec<_> = (1..len).into_iter().map(|_| { random::<T>() }).collect();
        assert_eq!(slow(&v), fast(&v));
    }

    #[test]
    fn random_test() {
        // FIXME: TODO: Make this work for u16, u8, maybe other types?
        for _ in (0..100) {
            run_rnd::<u64>();
            run_rnd::<u32>();
            run_rnd::<usize>();
        }
    }
}
