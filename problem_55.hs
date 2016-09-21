problem_55 = sum [ 1 | x <- [10..9999], isLychel x]

isLychel :: Integer -> Bool
isLychel x = isLychel' 50 x

    where isLychel' :: Int -> Integer -> Bool
          isLychel' countDown number = if countDown == 0
                                       then True
                                       else if isPalindrome . show $ nextStep number
                                       then False
                                       else isLychel'  (countDown - 1) $ nextStep number
          nextStep :: Integer -> Integer
          nextStep num = num + (reverseNum num)

reverseNum :: Integer -> Integer
reverseNum x = readInt (reverse (show x))

readInt :: [Char] -> Integer
readInt x = read x :: Integer

isPalindrome :: [Char] -> Bool
isPalindrome x = x == reverse x

main = do print problem_55
