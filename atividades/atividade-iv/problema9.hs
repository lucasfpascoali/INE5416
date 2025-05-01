computeDistance :: (Float, Float, Float) -> (Float, Float, Float) -> Float
computeDistance (x1, y1, z1) (x2, y2, z2) =
  sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2 + (z2 - z1) ^ 2)

main :: IO ()
main = do
  putStrLn "Digite as coordenadas do primeiro ponto (x1, y1, z1):"
  input1 <- getLine
  let (x1, y1, z1) = read input1 :: (Float, Float, Float)

  putStrLn "Digite as coordenadas do segundo ponto (x2, y2, z2):"
  input2 <- getLine
  let (x2, y2, z2) = read input2 :: (Float, Float, Float)

  let distance = computeDistance (x1, y1, z1) (x2, y2, z2)
  putStrLn $ "A distância entre os pontos é: " ++ show distance