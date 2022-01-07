calculo :: Int
calculo = sum [x * x| x <- [1 .. 100]]

main :: IO ()
main = do
    print $ show calculo