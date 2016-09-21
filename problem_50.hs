import Data.Numbers.Primes
import Data.List
import qualified Data.List as L
import Control.Monad

--problem_50 = maximum [x | x<-[1..78000], let list = takeWhileArg (\x -> sum x < 1000000) (drop x primes)]

takeWhileArg :: ([a] -> Bool) -> [a] -> [a] -> [a]
takeWhileArg _ accs [] = reverse accs
takeWhileArg f accs (x:xs)
    | f (x:accs) = takeWhileArg f (x:accs) xs
    | otherwise = reverse accs

findPrimeSum ps
    | isPrime sumps = Just sumps
    | otherwise     = findPrimeSum (tail ps) `mplus` findPrimeSum (init ps)
    where
    sumps = sum ps

problem_50 = findPrimeSum $ take 546 primes