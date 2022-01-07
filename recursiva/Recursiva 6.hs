combinar :: Ord a => [a] -> [a] -> [a]
combinar xx [] = xx
combinar [] yy = yy
combinar (x:xx) (y:yy)
  | x < y = x : combinar xx (y:yy)
  | otherwise = y : combinar (x:xx) yy


main :: IO ()
main = do
  print $ combinar [1, 2, 5] [3, 4, 6]