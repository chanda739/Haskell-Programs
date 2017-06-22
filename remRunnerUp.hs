{-A Haskell program to
Define a function remRunnerUp :: [Int] -> [Int] that removes the second largest number in the
 input list and leaves the remaining list undisturbed. The second largest number is defined to 
be the second number in the list if the list is sorted in descending order.  So, in particular,
if the largest number appears twice, the second largest number is the same as the largest number.
If the input list is has less than two elements, the function should return the input list unchanged.

Examples:

remRunnerUp [22, 35, 4, 65] = [22,4,65]
remRunnerUp [1,5,2,3,5,4] = [1,2,3,5,4]
remRunnerUp [5] = [5]
-}

import System.IO
nextmaximum :: Ord a => [a] -> a
nextmaximum xs = fst $ foldl searcher (h, h) xs
    where
        h = head xs
        searcher :: (Ord a) => (a, a) -> a -> (a, a)
        searcher (s, f) x = (min f (max s x), max f x)


remRunnerUp :: [Int] -> [Int]
remRunnerUp [ ] = [ ]
remRunnerUp [x] = [x]
remRunnerUp (x:xs)
     |x/=nextmaximum(x:xs) =x:remRunnerUp xs
     |otherwise = remRunnerUp xs

