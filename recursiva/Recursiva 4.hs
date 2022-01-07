calculo :: Int -> Int -> Int 
calculo x y 
  | x == y = x
  | x > y = calculo (x - y) y
  | otherwise = calculo x (y - x)


main :: IO ()
main = do
  print $ calculo 27 6