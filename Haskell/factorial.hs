factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

doublefactorial :: Integer -> Integer
doublefactorial 0 = 1
doublefactorial 1 = 1
doublefactorial n = n * doublefactorial(n - 2)
