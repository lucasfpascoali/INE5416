filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar f (x:xs)
  | f x = x:filtrar f xs
  | otherwise = filtrar f xs

main :: IO ()
main = do
  let lista = [1..10]
  let resultado = filtrar even lista
  print resultado
