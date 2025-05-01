euclides :: Int -> Int -> Int
euclides 0 b = b
euclides a 0 = a
euclides a b = if r == 0 then b else euclides b r
  where r = mod a b

main :: IO ()
main = do
  putStrLn "Digite dois números inteiros positivos:"
  a <- getLine
  b <- getLine
  let x = read a :: Int
  let y = read b :: Int
  putStrLn ("O máximo divisor comum é: " ++ show (euclides x y))