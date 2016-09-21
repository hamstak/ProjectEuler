import Data.Function (fix)

problem_2 :: Integer
problem_2 = sum $ takeWhile (<4000000) $ filter ((==0) . (`mod` 2)) (fix ((0:) . scanl (+) 1))


main :: IO ()
main = do print problem_2