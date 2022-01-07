calculo :: Int -> Int
calculo x 
    | x == 0 = x
    | otherwise = x + calculo (x - 1)

main :: IO ()
main = do
    print $ show (calculo 35)