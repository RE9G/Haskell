calcular :: IO () 
calcular = do
    putStrLn "Numeros:"
    quantidade <- readLn :: IO Int
    numeros <- sequence [ readLn :: IO Int | _ <- [1..quantidade] ]
    putStrLn $ "Resultado:" ++ show (sum numeros)


calculo :: Int -> [IO Int]
calculo 0 = []
calculo n = (readLn :: IO Int) : calculo (n-1)

main :: IO ()
main = do
    calcular
