data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float
area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b a) = b * a
area (Triangulo b h) = (b * h) / 2

minhaForma :: Forma
minhaForma = Triangulo 4 6

main :: IO ()
main = do print (area (Circulo 6.42))
          print (area (Retangulo 4 5))
          print (area minhaForma)