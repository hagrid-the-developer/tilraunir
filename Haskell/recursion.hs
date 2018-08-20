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
