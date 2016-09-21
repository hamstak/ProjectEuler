problem_56 = maximum [ digitSum ( a^b )| a<-[1..99], b<-[90..99]]

digitSum :: Integer -> Integer
digitSum x = sum $ map readInt $ (show x)

readInt :: Char -> Integer
readInt x = read [x] :: Integer

main = do print problem_56