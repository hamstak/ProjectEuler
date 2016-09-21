import Data.List

problem_14 = maximumBy (\x y -> compare (snd x) (snd y)) . zip [10..1000000] . map (length . collatz) $ [10..1000000]

collatz 1 = [1]
collatz n | even n = n : (collatz $ div n 2)
          | otherwise = n : (collatz $ 3 * n + 1)

main = do print problem_14