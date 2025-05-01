calcular :: Char -> Double -> Double -> Double
calcular operador x y
    | operador == '+' = x + y
    | operador == '-' = x - y
    | operador == '*' = x * y
    | operador == '/' = x / y
    | otherwise = error "Operador inválido!"

main :: IO ()
main = do
    putStrLn "Informe o operador (+, -, *, /):"
    operador <- getChar
    _ <- getLine
    putStrLn "Informe o primeiro número:"
    x <- readLn
    putStrLn "Informe o segundo número:"
    y <- readLn
    let resultado = calcular operador x y
    putStrLn $ "O resultado é: " ++ show resultado