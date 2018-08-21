power x n
      | n > 1 = x * power x (n - 1)
      | n < 0 = power (1/x) (-n)
      | n == 1 = x
      | n == 0 = 1


log2 n = go 0 1 n
    where
    go res pow n
       | 2*pow > n = res
       | otherwise = go (res+1) (2*pow) n


replicate' :: Int -> a -> [a]
replicate' 0 a = []
replicate' n a = [a] ++ replicate' (n - 1) a


(!!$) :: [a] -> Int -> a
(x:xs) !!$ 0 = x
[] !!$ n = error "index out of range"
(x:xs) !!$ n = xs !!$ (n - 1)


zip' :: [a] -> [b] -> [(a, b)]
zip' [] y = []
zip' x [] = []
zip' (x:xs) (y:ys) = [(x, y)] ++ zip' xs ys
