{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use even" #-}
class (Integral a) => MeuInt a where
  bigger :: a -> a -> a
  smaller :: a -> a -> a
  par :: a -> Bool
  impar :: a -> Bool
  primo :: a -> Bool
  mdc :: a -> a -> a
  (===) :: a -> a -> Bool
  quadrado :: a -> a -- Retorna x^2
  (+++) :: a -> a -> a -- Retorna x + 2y

  bigger x y | x > y = x
             | otherwise = y

  smaller x y | x == bigger x y = y
              | otherwise = x

  par x = mod x 2 == 0
  impar x = not $ par x
  
  primo x | x < 2 = False
          | otherwise = null [ n | n <- [2..isqrt x], x `mod` n == 0 ]
          where 
            isqrt = floor . sqrt . fromIntegral
  
  mdc 0 y = y
  mdc x 0 = x
  mdc x y = if r == 0 then y else mdc y r where r = mod x y

  (===) x y = (x - y) <= 1
  
  quadrado x = x * x

  (+++) x y = x + 2 * y

instance MeuInt Integer
instance MeuInt Int

main :: IO()
main = do
  print $ bigger (5::Integer) (10::Integer)
  print $ bigger (5::Int) (10::Int)
  print $ smaller (5::Integer) (10::Integer)
  print $ smaller (5::Int) (10::Int)
  print $ par (5::Int)
  print $ par (6::Integer)
  print $ impar (5::Int)
  print $ impar (6::Integer)
  print $ primo (5::Int)
  print $ primo (10::Integer)
  print $ mdc (5::Integer) (10::Integer)
  print $ mdc (5::Int) (10::Int)
  print $ (10::Int) === (5::Int)
  print $ (5::Integer) === (4 ::Integer)
  print $ quadrado (5::Integer)
  print $ quadrado (5::Int)
  print $ (5::Int) +++ (10::Int)
  print $ (5::Integer) +++ (4 ::Integer)



  