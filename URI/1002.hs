import Text.Printf
p = 3.14159
numero m = read m :: Double
a r =  p * r ** 2

main :: IO ()
main = do
 r <- getLine
 putStrLn ("A=" ++ printf "%.4f" (a (numero r)))