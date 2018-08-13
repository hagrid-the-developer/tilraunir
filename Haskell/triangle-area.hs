main = do
  putStrLn "The base?"
  base_str <- getLine
  let base = read(base_str)::Double
  putStrLn "The height?"
  height_str <- getLine
  let height = read(height_str)::Double
  let area = base*height/2
  putStrLn ("The area of the triangle is: " ++ show(area))
