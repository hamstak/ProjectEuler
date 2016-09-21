import Data.Numbers.Primes
import Data.List

problem_47 = head [(x, y, z, w) | x <- [1, 2..], let y = x + 1, let z = y + 1, let w = z + 1, containsFour (x, y, z, w)]
    where containsFour (x, y, z, w) = df x && df y && df z && df w
          distinctFactors = map head . group . primeFactors
          df first = (length . distinctFactors $ first) == 4