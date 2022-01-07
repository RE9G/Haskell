grid :: Int -> Int -> [(Int, Int)]
grid a b = [(x, y) | x <- [0..a], y <- [0..b]]

main :: IO ()
main = do
    print $ show (grid 9 6)