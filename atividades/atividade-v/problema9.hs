mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear f (x:xs) = f x:mapear f xs

main :: IO ()
main = do
    let lista = [1,2,3,4,5]
    let listaQuadrados = mapear (^2) lista
    print listaQuadrados
    let listaCubo = mapear (^3) lista
    print listaCubo
    let listaRaiz = mapear sqrt lista
    print listaRaiz