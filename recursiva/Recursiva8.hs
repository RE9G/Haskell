-- soma de lista
soma :: [Int] -> Int 
soma [] = 0
soma [x] = x
soma (x:y) = x + soma y

-- numero de elementos
elementos :: Int -> [a]-> [a]
elementos 0 y = []
elementos e [x] = [x]
elementos e (x:y) = x : elementos (e-1) y

-- ultimo
fim :: [a] -> a
fim [x] = x
fim (x:y) = fim y

main :: IO ()
main = do
    print $ soma [42, 543, 64, 744, 464, 555]
    print $ elementos 5 [42, 543, 64, 744, 464, 555]
    print $ fim [42, 543, 64, 744, 464, 555]