euclides :: Int -> Int -> Int
euclides 0 b = b
euclides a 0 = a
euclides a b = if r == 0 then b else euclides b r
  where r = mod a b

eulerTotient :: Int -> Int
eulerTotient n = length [x | x <- [1..n], euclides x n == 1]

main :: IO ()
main = do 
  putStrLn "Digite um número inteiro positivo:"
  n <- getLine
  let x = read n :: Int
  putStrLn ("A função totiente de Euler para " ++ show x ++ " é: " ++ show (eulerTotient x))