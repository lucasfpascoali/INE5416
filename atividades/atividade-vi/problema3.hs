data Ponto = P3D (Float, Float, Float) | P2D (Float, Float)
distancia :: Ponto -> Ponto -> Float
distancia (P3D _) (P2D _) = error "Pontos de dimensões diferentes"
distancia (P2D _) (P3D _) = error "Pontos de dimensões diferentes"
distancia (P2D (x1, y1)) (P2D (x2, y2)) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
distancia (P3D (x1, y1, z1)) (P3D (x2, y2, z2)) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2 + (z2 - z1) ^ 2)

main :: IO ()
main = do
    let ponto1 = P2D (3, 4)
    let ponto2 = P2D (7, 1)
    let ponto3 = P3D (1, 2, 3)
    let ponto4 = P3D (4, 5, 6)
    print $ distancia ponto1 ponto2
    print $ distancia ponto3 ponto4
    print $ distancia ponto1 ponto3