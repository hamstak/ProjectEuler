import Data.List
problem_4 = maximum $ filter (\x -> (show x) == reverse (show x)) $ [x*y |x<-[90..99], y<-[x..99]]

main = do print problem_4