absolut :: Float -> Float
absolut x | x < 0 = -x
          | otherwise = x

main :: IO ()
main = do
    putStrLn "Digite um número:"
    input <- getLine

    let number = (read input :: Float)
    
    let result = absolut number

    putStrLn ("Resultado: " ++ show result)