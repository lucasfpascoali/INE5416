calcTriangBase :: Float -> Float -> Float
calcTriangBase b h = (b * h) / 2

main :: IO ()
main = do
    putStrLn "Digite a base do triângulo:"
    baseInput <- getLine
    let base = read baseInput :: Float

    putStrLn "Digite a altura do triângulo:"
    alturaInput <- getLine
    let altura = read alturaInput :: Float

    let area = calcTriangBase base altura
    putStrLn ("A área do triângulo é: " ++ show area)