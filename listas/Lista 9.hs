calculo :: [Int] -> [Int] -> Int
calculo a b = sum [a * b | (a, b) <- zip a b]

main :: IO ()
main = do
    print $ calculo [3, 5, 5, 6, 3, 2] [4, 2, 2, 8, 9, 5]