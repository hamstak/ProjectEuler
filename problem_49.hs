import Data.Numbers.Primes
import Data.List
import Data.Set (member, fromList)

problem_49 = [(x, y, z) | (x, y, z) <- generator, isPrime x, isPrime y, isPrime z, z < 10000, isMember y x, isMember z x]
    where isMember mem num = (show mem) `member` fromList (permutations (show num))

generator = [(x, x + 3330, x + 6660) | x <- [1000.. 9999]]