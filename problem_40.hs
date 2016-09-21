import Data.Char

problem_40 = product [  d (10 ^ x) | x <- [0..6]]
	where 
		n = concat [show n | n <- [1..]]
		d x = digitToInt (n !! (x-1))

main = do print problem_40