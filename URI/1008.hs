import Text.Printf

calculo text = read text :: Double
salario b c = b * c

main :: IO ()
main = do 
  a <- getLine 
  b <- getLine
  c <- getLine
  putStrLn  ("NUMBER = " ++  a)
  putStrLn  ("SALARY = U$ " ++ printf "%.2f" (salario (calculo b) (calculo c)))