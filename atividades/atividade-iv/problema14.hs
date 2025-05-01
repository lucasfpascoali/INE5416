euclides  :: Int -> Int -> Int
euclides 0 b = b
euclides a 0 = a
euclides a b = if r == 0 then b else euclides b r
  where r = mod a b

coprimo :: Int -> Int -> Bool
coprimo x y = euclides x y == 1

main :: IO ()
main = do
  putStrLn "Digite dois números inteiros positivos:"
  a <- getLine
  b <- getLine
  let x = read a :: Int
  let y = read b :: Int
  if coprimo x y
    then putStrLn ("Os números " ++ show x ++ " e " ++ show y ++ " são coprimos.")
    else putStrLn ("Os números " ++ show x ++ " e " ++ show y ++ " não são coprimos.")