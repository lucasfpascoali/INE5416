{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (_:xs) = 1 + comprimento xs

media :: [Int] -> Float
media [] = 0
media xs = fromIntegral (soma xs) / fromIntegral (comprimento xs)

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    let mediaLista = media lista
    putStrLn $ "A média dos elementos da lista é: " ++ show mediaLista