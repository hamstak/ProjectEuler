import Data.List
import Data.Set

problem_44 = [ x - y | x <- pentagons, y <- (takeWhile (<x) pentagons), isPentagon (x-y), isPentagon (x+y)]

isPentagon = (`member` fromList pentagons)

distance x y = abs (x - y)

compareDistance x y =  compare (distance (fst x) (snd x)) (distance (fst y) (snd y))

pentagons = [floor n | x<- [1..5000], let n =  (x * ((3 * x) - 1)) / 2.0]

