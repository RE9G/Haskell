buscar :: Eq a => a -> [(a,b)] -> [b]
buscar a b = [c | (aa, c) <- b, a == aa]

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x b = buscar x [(z, i) | (z, i) <- zip b [0 ..]]

tuplas :: [(Integer, Integer)]
tuplas = [(1, 7), (2, 3), (4, 5)]

inteiros :: [Integer]
inteiros = [1, 2, 3]

main :: IO ()
main = do
    print $ buscar 2 tuplas
    print $ posicoes 1 inteiros
