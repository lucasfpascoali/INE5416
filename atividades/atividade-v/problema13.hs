apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (x:xs)
  | f x = apagarEnquanto f xs
  | otherwise = x:xs

main :: IO ()
main = do
  let lista = [1,2,3,4,5,6]
  let resultado = apagarEnquanto (< 4) lista
  print resultado
  -- Saída: [4,5,6]