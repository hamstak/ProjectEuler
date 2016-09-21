import Data.List
import Data.Set
problem_52 = head [x | x<-[1..], check 2 x, check 3 x, check 4 x, check 5 x, check 6 x]

check :: Int -> Int -> Bool
check n x = (show (n * x)) `member` (fromList (permutations (show x)))