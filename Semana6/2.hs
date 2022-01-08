calculo :: Int -> Int -> IO Int
calculo 0 total = return total
calculo qt total = do
    valor <- readLn :: IO Int
    calculo (qt-1) (total + valor)
        
calcular :: IO ()
calcular = do
    qt <- readLn :: IO Int
    out' <- calculo qt 0
    putStrLn ("Resultado:" ++ show out')

main :: IO ()
main = do
    putStrLn "Numeros:"
    calcular