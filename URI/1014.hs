import Text.Printf

numero text = read text :: Double
calculo a b = a / b

main :: IO ()
main = do 
 a <- getLine 
 b <- getLine
 putStrLn  (printf "%.3f km/l\n" $ (calculo (numero a) (numero b)))


-- |fica como presentation error no URI 5%