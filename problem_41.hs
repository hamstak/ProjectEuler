import Data.Numbers.Primes
import Data.Char
import Data.List (delete)

problem_41 = maximum [intN | d<-[3..9], n <- permutations ['1'.. intToDigit d], let intN = read n, isPrime intN]

permutations "" = [""]
permutations str = [(x:xs) | x <- str, xs <- permutations (delete x str)]