{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let resultado = soma lista
    putStrLn $ "A soma dos elementos da lista é: " ++ show resultado