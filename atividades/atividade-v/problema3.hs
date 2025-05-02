menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (x:y:xs)
  | x < y = menor (x:xs)
  | otherwise = menor (y:xs)

main :: IO ()
main = do
    let lista = [5, 2, 8, 1, 4]
    let resultado = menor lista
    putStrLn $ "O menor elemento da lista é: " ++ show resultado