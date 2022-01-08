putStr' :: String -> IO ()
putStr' [] = return ()
putStr' str = sequence_ [putChar char | char <- str] 

main :: IO ()
main = do
  putStr' "Teste"
