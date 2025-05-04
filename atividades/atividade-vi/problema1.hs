type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 1 = ("Ana", "Matematica", 8.0, 7.5, 9.0)
aluno 2 = ("Bob", "Portugues", 6.0, 5.5, 7.0)
aluno _ = ("", "", 0, 0, 0)

getNome :: Aluno -> Nome
getNome (nome, _, _, _, _) = nome

media :: Int -> Nota
media x = (n1 + n2 + n3) / 3
  where (_, _, n1, n2, n3) = aluno x

mediaTurma :: Nota
mediaTurma = mediaTurma
  where mediaTurma = mediaTurmaHelper 1 0 0

mediaTurmaHelper :: Int -> Int -> Nota -> Nota
mediaTurmaHelper id num nota
  | nome == "" = nota / fromIntegral num
  | otherwise = mediaTurmaHelper (id + 1) (num + 1) (nota + mediaAluno)
  where
    (nome, _, n1, n2, n3) = aluno id
    mediaAluno = (n1 + n2 + n3) / 3 

main :: IO ()
main = do
    let aluno1 = aluno 1
    putStrLn $ "Nome do aluno(a): " ++ getNome aluno1
