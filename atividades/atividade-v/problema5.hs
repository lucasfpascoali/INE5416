busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (x:xs) y
  | x == y = True
  | otherwise = busca xs y

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5]
  let elemento = 3
  if busca lista elemento
    then putStrLn "Elemento encontrado!"
    else putStrLn "Elemento não encontrado!"