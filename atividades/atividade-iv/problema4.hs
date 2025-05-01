xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)

main :: IO ()
main = do
    putStrLn "Digite o primeiro valor (True/False):"
    input1 <- getLine
    let valor1 = read input1 :: Bool

    putStrLn "Digite o segundo valor (True/False):"
    input2 <- getLine
    let valor2 = read input2 :: Bool

    let resultado = xor valor1 valor2
    putStrLn ("O resultado do XOR é: " ++ show resultado)