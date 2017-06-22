{-A Haskell program to
Define a function

largestPower :: Int -> Int -> Int

such that for a positive number n and a prime number p, 

largestPower n p

is the largest power of p that divides n! (factorial of n).

Examples:

largestPower 10 5 = 2
largestPower 10 2 = 8
-}

import System.IO
largestPower :: Int -> Int -> Int
largestPower n p 
    |n > 0 && isPrimes p = n `div` p + n `div` (p ^ 2) + n `div` (p ^ 3) + n `div` (p ^ 4)

isPrimes :: Int -> Bool
isPrimes x = null [y |y <-[2..floor(sqrt(fromIntegral x))],x `mod` y ==0]

