answer :: String -> String
answer "Koen" = "I think debugging Haskell is fun"
answer x
       | x == "Simon" || x == "John" || x == "Phil" = "I think that Haskell is a great programming language"
       | otherwise = "I don't know who you are"

answer2 x = if x == "Koen" then "I think debugging Haskell is fun"
            else if x == "Simon" || x == "John" || x == "Phil" then "I think that Haskell is a great programming language"
                 else "I don't know who you are"


main = do
  name <- getLine
  let a = answer2 name
  putStrLn a
