import Data.Char (digitToInt)

problem_20 = sum $ map digitToInt $ show $ product [1..100]