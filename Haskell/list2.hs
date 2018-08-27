-- https://en.wikibooks.org/wiki/Haskell/Lists_II
-- https://stackoverflow.com/questions/38441204/expected-a-type-but-num-a-has-kind-ghc-prim-constraint
-- https://stackoverflow.com/questions/40894475/non-type-variable-argument-in-the-constraint-error-on-haskell-map-function

scan_sum :: Num a => [a] -> [a]
scan_sum [a] = f 0 [] [a] where
    f _ [a] [] = [a]
    f n [a] (x:xs) = f (n + x) (a : (n + x)) xs
