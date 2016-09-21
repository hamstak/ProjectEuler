import Data.Numbers.Primes

problem_10 = sum $ takeWhile (<2000000) primes

main = do print problem_10