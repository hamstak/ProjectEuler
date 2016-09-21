import Data.Digits

problem_16 = sum . digits 10 $ 2^1000

main = do print problem_16