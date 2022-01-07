grid :: Int -> Int -> [(Int, Int)]
grid a b = [(x, y) | x <- [0..a], y <- [0..b]]

quadrado :: Int -> [(Int, Int)]
quadrado q = [(x,y) | (x, y) <- grid q q, x /= y]

main :: IO ()
main = do
    print $ quadrado 5