ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (x:xs) y 
  | x == y = 1 + ocorrencias xs y
  | otherwise = ocorrencias xs y

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 1, 2, 3, 1]
      elemento = 1
      resultado = ocorrencias lista elemento
  putStrLn $ "O elemento " ++ show elemento ++ " aparece " ++ show resultado ++ " vezes na lista."