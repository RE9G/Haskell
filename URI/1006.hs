import Text.Printf

main :: IO ()
main = do 
  a <- readLn :: IO Double
  b <- readLn :: IO Double 
  c <- readLn :: IO Double          
  printf "MEDIA = %.1f\n" $ (a*2 + b*3 + c*5) / 10