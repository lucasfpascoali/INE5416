inverte :: [t] -> [t]
inverte [] = []
inverte xs = inverteHelper xs []

inverteHelper :: [t] -> [t] -> [t]
inverteHelper [] x = x
inverteHelper (x:xs) y = inverteHelper xs (x:y)

main :: IO ()
main = do
    print (inverte [1,2,3,4,5]) -- [5,4,3,2,1]
    print (inverte "abcde")     -- "edcba"
    print (inverte [1])         -- [1]
    print (inverte [1,2])       -- [2,1]

