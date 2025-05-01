fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
  putStrLn "Digite um número inteiro positivo:"
  input <- getLine
  let n = read input :: Int
  if n < 0
    then putStrLn "Número inválido. Por favor, insira um número inteiro positivo."
    else do
      let resultado = fib n
      putStrLn $ "O " ++ show n ++ "º número de Fibonacci é: " ++ show resultado
