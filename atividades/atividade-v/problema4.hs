encontrarMenorMaior :: Int -> Int -> [Int] -> (Int, Int)
encontrarMenorMaior menor maior [] = (menor, maior)
encontrarMenorMaior menor maior (x:xs)
  | x < menor = encontrarMenorMaior x maior xs
  | x > maior = encontrarMenorMaior menor x xs
  | otherwise = encontrarMenorMaior menor maior xs
  
diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor (x:xs) = let (menor, maior) = encontrarMenorMaior x x xs in maior - menor

main :: IO ()
main = do
    let lista = [5, 2, 8, 1, 4]
    let resultado = diferencaMaiorMenor lista
    putStrLn $ "A diferença entre o maior e o menor elemento da lista é: " ++ show resultado