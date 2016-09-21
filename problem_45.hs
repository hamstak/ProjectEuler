import Data.List
import Data.Set

isPentagon = (`member` fromList pentagon)

pentagon = [floor x | n <- [1..50000], let x = (n * ((3 * n) - 1)) / 2]


problem_45 = head [x | x <- scanl (+) 1 [5, 9..], isPentagon x, x > 40755]
