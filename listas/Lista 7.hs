comparacao :: (Eq a, Eq b) => [(a, b)] -> [(a, b)] -> Bool
comparacao x y = x == y


gerador1 :: [(Int, Int)]
gerador1 = [(x, y) | x <- [1, 2], y <- [3, 4]]
gerador2 :: [(Int, Int)]
gerador2 = [(1, y) | y <- [3, 4]] ++ [(2, y) | y <- [3,4]]


main :: IO ()
main = do
    let a =  gerador1
    let b =  gerador2
    print $ comparacao a b