alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

aprovados :: [(Int, String, Float)] -> [String]
aprovados (x:xs) = map getNome $ filter (\(_,_,media) -> media >= 6) (x:xs)

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 alunos = [ getNome aluno | aluno <- alunos, let (_,_,media) = aluno, media >= 6 ]
main = do
    print (getPrimeiroAluno alunos)