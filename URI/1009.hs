import Text.Printf

calculo text = read text :: Double
salario b c = b + c*0.15

main :: IO ()
main = do 
  a <- getLine 
  b <- getLine
  c <- getLine
  putStrLn  ("TOTAL = R$ " ++ printf "%.2f" (salario (calculo b) (calculo c)))