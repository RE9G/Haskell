-- and :: [Bool] -> Bool

and' :: [Bool] -> Bool 
and' [] = False 
and' [x] = x
and' (x:xs) = x && and' xs

-- concat :: [[a]] -> [a]

concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

-- replicate :: Int -> a -> [a]

replicate' :: Int -> a -> [a]
replicate' 0 y = []
replicate' x y = y : replicate' (x-1) y

-- (!!) :: [a] -> Int -> a

(!!!) :: [a] -> Int -> a
(!!!) (x:xs) 0 = x
(!!!) (x:xs) i = xs !!! (i-1)

-- elem :: Eq a => a -> [a] -> Bool

elem' :: Eq a => a -> [a] -> Bool
elem' e [] = False
elem' e (q:qs) 
  | q == e = True 
  | otherwise = elem' e qs

main :: IO ()
main = do
    print $ and' [True, False]
    print $ and' [True, True]
    print $ concat' [[64,35,2365], [23, 236, 356]]
    print $ [42, 53, 234, 44, 78, 45, 37] !!! 6
    print $ elem' 44 [31, 66, 234, 324, 43, 523, 22, 124]
    print $ elem' 43 [31, 66, 234, 324, 43, 523, 22, 124]