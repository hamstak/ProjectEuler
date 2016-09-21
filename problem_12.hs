import Data.Numbers.Primes
import Data.Function (fix)
import Data.List

problem_12 = head [x | x <- (fix ((1:) . zipWith (+) [2..])), (\x -> (500 <=) . product . map ((+1) . length) . group . primeFactors $ x) x]

main = do print problem_12

