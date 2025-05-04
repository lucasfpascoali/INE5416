-- Exemplo prático: evitando confusões entre IDs
-- Imagine uma função que recebe dois inteiros — um para ID de usuário e outro para ID de pedido. 
-- Se ambos forem Int, podemos trocá‑los sem que o compilador reclame

-- type UserId  = Int
-- type OrderId = Int

-- Com newtype, não temos nenhum over-head por baixo dos panos, isto é, a eficiência é a mesma
-- e os tipos não são intercambiáveis, o compilador reclamará.

newtype UserId  = UserId  Int
  deriving (Eq, Show, Num)        -- podemos herdar instâncias

newtype OrderId = OrderId Int
  deriving (Eq, Show, Num)

registrarEntrega :: UserId -> OrderId -> IO ()
registrarEntrega uId oId =
  putStrLn $
     "Entregando pedido " ++ show oId ++
     " ao usuário " ++ show uId

main :: IO ()
main = registrarEntrega (UserId 42) (OrderId 9001) 

-- A diferença para o tipo Data, é que:
-- data UserId = UserId Int
-- vai virar um objeto distinto no heap, o newtype evita essa alocação extra.
