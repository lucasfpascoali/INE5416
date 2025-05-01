isPrime :: Int -> Bool
isPrime n
  | n < 2 = False
  | otherwise = null [ x | x <- [2..isqrt n], n `mod` x == 0 ]
  where
    isqrt = floor . sqrt . fromIntegral

main :: IO ()
main = do
  putStrLn "Digite um número inteiro positivo:"
  input <- getLine
  let n = read input :: Int
  if n < 0
    then putStrLn "Número inválido. Por favor, insira um número inteiro positivo."
    else do
      if isPrime n
        then putStrLn $ show n ++ " é primo."
        else putStrLn $ show n ++ " não é primo."