pitag :: Int -> [(Int, Int, Int)]
pitag x = [(a, b, c) | a <- [1 .. x], b <- [1 .. x], c <- [1 .. x], (a ^ 2 + b ^ 2) == c ^ 2]

main :: IO ()
main = do
    print $ show (pitag 5)