maxValue :: Int -> Int -> Int -> Int
maxValue a b c
  | a >= b && a >= c = a
  | b >= a && b >= c = b
  | otherwise        = c

main :: IO ()
main = do
  putStrLn "Digite o primeiro valor:"
  a <- readLn :: IO Int
  putStrLn "Digite o segundo valor:"
  b <- readLn :: IO Int
  putStrLn "Digite o terceiro valor:"
  c <- readLn :: IO Int
  let maxVal = maxValue a b c
  putStrLn ("O maior valor é: " ++ show maxVal)