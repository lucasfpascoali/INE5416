main :: IO()
main = do
  print $ min 5 10
  print $ max 5 10
  print $ min 'a' 'z'
  print $ max 'a' 'z'
  -- Comparação lexicográficas em listas
  print $ min [5, 10] [4, 12]
  print $ max [5, 10] [4, 12]

