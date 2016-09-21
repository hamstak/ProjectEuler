data Triangle = Triangle {first :: Integer
                         ,second :: Integer
                         ,third :: Integer} deriving (Show)

problem_9 = (\x -> (first x) * (second x) * (third x)) $ head $ filter (\x -> (first x) + (second x) + (third x) == 1000)[ Triangle (x^2 - y^2) (2 * x * y) (x^2 + y^2) | y<-[2..1000], x<-[y..1000] ]

main = do print problem_9