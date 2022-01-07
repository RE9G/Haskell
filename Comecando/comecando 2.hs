last' :: [a] -> a
last' a = a !! (length a - 1)
 
main :: IO()
main = do 
 print $ last' [1,2,3,4]