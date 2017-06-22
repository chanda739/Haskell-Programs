{-
Define a function

goodPrime :: Int -> Int

such that 

goodPrime n 

returns the smallest prime number p such that S > n, where S is the sum of the digits of p.

Examples:

goodPrime 4 = 5
goodPrime 10 = 29
goodPrime 15 = 79
-}
import System.IO
goodPrime ::Int -> Int
goodPrime n = sumlist n prime

prime = sieve [2..]
          where sieve (x:xs) = x:(sieve [y| y <- xs, mod y x > 0])

sumlist :: Int -> [Int] -> Int
sumlist n (x:xs)
      |(sumd x) > n = x
      |otherwise = sumlist n xs
