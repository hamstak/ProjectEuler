import Data.Char
import Data.List (delete)

problem_43 = sum [ read n :: Int | n <- permutations ['0'.. '9'], check n]

permutations :: [Char] -> [[Char]]
permutations "" = [""]
permutations str = [(x:xs) | x <- str, xs <- permutations (delete x str)]

check :: [Char] -> Bool
check str = if (first && second && third && forth && fifth && sixth && seventh) then True else False
	where 
		first = build 2 3 4 `mod` 2 == 0
		second = build 3 4 5 `mod` 3 == 0
		third = build 4 5 6 `mod` 5 == 0
		forth = build 5 6 7 `mod` 7 == 0
		fifth = build 6 7 8 `mod` 11 == 0
		sixth = build 7 8 9 `mod` 13 == 0
		seventh = build 8 9 10 `mod` 17 == 0
		d n = (str !! (n - 1))
		build x y z = read ((d x):(d y):(d z):[]) :: Int