import Data.Char

problem_42 words = length [wordScore | word <- words, let wordScore = score word, isTriangle wordScore]

score word = sum [ (ord letter)- 64 | letter <- word ]

isTriangle wordScore = wordScore `elem` (takeWhile (<= wordScore) [floor ((0.5 * n)*(n + 1)) | n <-[1..]])

main = do f <- readFile "words.txt"
          let words = read $"["++f++"]" :: [[Char]]
          print $ problem_42 words