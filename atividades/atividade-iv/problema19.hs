isPrime :: Int -> Bool
isPrime n
  | n < 2 = False
  | otherwise = null [ x | x <- [2..isqrt n], n `mod` x == 0 ]
  where
    isqrt = floor . sqrt . fromIntegral

goldbachConjecture :: Int -> Int
goldbachConjecture n
  | n <= 2 = error "Número deve ser maior ou igual a 2"
  | odd n = error "Número deve ser par"
  | otherwise = head [ x | x <- [2..n-1], isPrime x, isPrime (n - x) ]

main :: IO ()
main = do
  putStrLn "Digite um número inteiro positivo:"
  input <- getLine
  let n = read input :: Int

  putStrLn $ "A conjectura de Goldbach para " ++ show n ++ " é: " ++ show (goldbachConjecture n)