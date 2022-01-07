calculo :: (Ord p, Num p) => p -> p
calculo x
  | x <= 0 = 1
  | otherwise = x * calculo (x-1)


main :: IO ()
main = do
  print $ show (calculo 5)