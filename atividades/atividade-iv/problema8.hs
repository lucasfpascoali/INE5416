bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = (x1, x2)
    where
        sqrtDelta = sqrt((b**2) - (4 * a * c))
        x1 = (-b + sqrtDelta) / (2 * a)
        x2 = (-b - sqrtDelta) / (2 * a)
    
main :: IO ()
main = do
    putStrLn "Digite os valores de a, b e c da equação ax² + bx + c = 0 (digite enter após cada valor):"
    a <- readLn :: IO Float
    b <- readLn :: IO Float
    c <- readLn :: IO Float
    let (x1, x2) = bhaskara a b c
    putStrLn ("As raízes da equação são: " ++ show x1 ++ " e " ++ show x2)