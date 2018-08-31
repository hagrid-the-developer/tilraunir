-- http://learnyouahaskell.com/modules
import Data.List

-- https://en.wikibooks.org/wiki/Haskell/Lists_II
-- https://stackoverflow.com/questions/38441204/expected-a-type-but-num-a-has-kind-ghc-prim-constraint
-- https://stackoverflow.com/questions/40894475/non-type-variable-argument-in-the-constraint-error-on-haskell-map-function

-- scan_sum :: Num a => [a] -> [a]
-- scan_sum [a] = f 0 [] [a]
--    where
--    f _ [a] [] = [a]
--    f n [a] (x:xs) = f (n + x) (a : (n + x)) xs

scan_sum :: Num a => [a] -> [a]
scan_sum [] = []
scan_sum a = f 0 a
    where
    f tot [] = []
    f tot (x:xs) = (tot + x) : f (tot + x) xs

scan_sum2 :: Num a => [a] -> [a]
scan_sum2 [] = []
scan_sum2 [a] = [a]
scan_sum2 (x:y:xs) = x : scan_sum2 ((x + y) : xs)

diffs :: Num a => [a] -> [a]
diffs [] = []
diffs [a] = [a]
diffs [x, y] = [y - x]
diffs (x:y:xs) = (y - x) : diffs (y:xs)

divisors p = [f | f <- [1..p], p `mod` f == 0]
divisors_list = map divisors

-- Run Length Encoding
-- https://wiki.haskell.org/Function_composition
rle' :: [Char] -> (Char, Int)
rle' x = (head x, length x)
rle :: [Char] -> [(Char, Int)]
rle = (map rle') . group
