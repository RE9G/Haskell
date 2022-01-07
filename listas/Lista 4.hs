replicate' :: Int -> a -> [a]
replicate' a b = [b | x <-[1..a]]


main :: IO ()
main = do
    print $ show (replicate 10 True)