pow :: Float -> Float -> Float
pow x y = x ** y

main :: IO ()
main = do
    putStrLn "Digite a base:"
    baseInput <- getLine
    putStrLn "Digite o expoente:"
    expInput <- getLine

    let base = (read baseInput :: Float)
    let exp = (read expInput :: Float)
    
    let result = pow base exp

    putStrLn ("Resultado: " ++ show result)
