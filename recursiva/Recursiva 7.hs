combinar1  :: Ord a => [a] -> [a] -> [a]
combinar1 xs [] = xs
combinar1 [] ys = ys
combinar1 (x:xs) (y:ys) = if x < y then x : combinar1 xs (y:ys) else y : combinar1 (x:xs) ys

metades :: [a] -> ([a],[a])
metades xs = splitAt (length xs `div` 2) xs

combinar2 :: Ord a => [a] -> [a]
combinar2 []  = []
combinar2 [x] = [x]
combinar2 xs = combinar1  (combinar2 esquerda) (combinar2 direita) 
    where (esquerda, direita) = metades xs

main :: IO ()
main = do 
    print $ combinar2 [5, 4, 2, 15, 6]
    print $ combinar2 [124, 25, 433, 9314]