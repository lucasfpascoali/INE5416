{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
euclides  :: Int -> Int -> Int
euclides 0 b = b
euclides a 0 = a
euclides a b = if r == 0 then b else euclides b r
  where r = mod a b

gcd3 :: Int -> Int -> Int -> Int
gcd3 a b c = euclides (euclides a b) c

main :: IO ()
main = do
  putStrLn "Digite o primeiro número:"
  a <- readLn
  putStrLn "Digite o segundo número:"
  b <- readLn
  putStrLn "Digite o terceiro número:"
  c <- readLn
  let resultado = gcd3 a b c
  putStrLn ("O máximo divisor comum é: " ++ show resultado)