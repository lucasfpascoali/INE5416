import Control.Monad.RWS (MonadState(put))
isDivisible :: Int -> Int -> Bool
isDivisible x y = mod x y == 0

main :: IO ()
main = do
    putStrLn "Digite um número inteiro positivo:"
    a <- getLine
    putStrLn "Digite outro número inteiro positivo:"
    b <- getLine
    let x = read a :: Int
    let y = read b :: Int
    let result = isDivisible x y
    if result
        then putStrLn (show x ++ " é divisível por " ++ show y)
        else putStrLn (show x ++ " não é divisível por " ++ show y)