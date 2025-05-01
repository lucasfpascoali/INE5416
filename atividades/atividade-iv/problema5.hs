studentApproved :: Float -> Float -> Float -> Bool
studentApproved a b c
  | avg >= 6 = True
  | otherwise = False
  where avg = (a + b + c) / 3

main :: IO ()
main = do
  putStrLn "Digite a nota da primeira prova:"
  a <- readLn
  putStrLn "Digite a nota da segunda prova:"
  b <- readLn
  putStrLn "Digite a nota da terceira prova:"
  c <- readLn
  if studentApproved a b c
    then putStrLn "Aprovado"
    else putStrLn "Reprovado"