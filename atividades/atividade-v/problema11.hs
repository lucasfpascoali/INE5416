primeiros :: Int -> [t] -> [t]
primeiros 0 _ = []
primeiros _ [] = []
primeiros n (x:xs) = x : primeiros (n-1) xs

main :: IO ()
main = do
  let lista = [1..10]
  let resultado = primeiros 5 lista
  print resultado