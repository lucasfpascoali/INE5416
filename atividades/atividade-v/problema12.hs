apagar :: Int -> [Int] -> [Int]
apagar _ [] = []
apagar 0 xs = xs
apagar n (x:xs) = apagar (n-1) xs

main :: IO ()
main = do
  let lista = [1..10]
  let resultado = apagar 5 lista
  print resultado