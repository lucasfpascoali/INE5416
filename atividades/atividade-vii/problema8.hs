data DiaSemana
  = Segunda
  | Terca
  | Quarta
  | Quinta
  | Sexta
  | Sabado
  | Domingo
  deriving (Eq, Show, Enum, Bounded)
-- Eq e Show para igualdade e impressão. Enum para obter succ, pred, fromEnum, toEnum. Bounded para saber o minBound e maxBound

main :: IO()
main = do
  print ([minBound .. maxBound] :: [DiaSemana])
  print (succ Quarta)
  print (fromEnum Sexta)
  print (toEnum 6 :: DiaSemana)
  print [Sexta .. Domingo]
