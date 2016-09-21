problem_53 = sum [1 | x<-[1..100], n <- [1..x], choose x n >= 1000000]

choose x n = (fac x) `div` ((fac n) * (fac (x - n)))

fac 0 = 1
fac n = n * fac (n-1)

