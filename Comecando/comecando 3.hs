init' :: [a] -> [a]
init' a = take (length a - 1) a   

main :: IO()
main = do 
 print $ init' [1,2,3,4]