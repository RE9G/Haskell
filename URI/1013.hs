import Text.Printf

calculo :: Int -> Int -> Int
calculo  a b  =  (a + b + abs (a - b)) `div` 2

main :: IO ()
main = do 
  abc  <- getLine :: IO String 
  let [a, b, c] = map (read :: String -> Int) $ words abc 
  printf "%d eh o maior\n" $ calculo a $ calculo b c