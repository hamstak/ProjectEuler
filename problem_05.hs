import Data.Numbers.Primes
import Data.List

problem_5 = foldl lcm (product $ concat [ primeFactors x | x <-[2..20]]) [1..20]

main = do print problem_5