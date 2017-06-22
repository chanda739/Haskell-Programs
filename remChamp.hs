{-A Haskell program to
Define a function remChamp :: [Int] -> [Int] that removes the first occurrence of the
largest number in the input list and leaves the remaining list undisturbed. If the input
list is empty, it should return the empty list.

Examples:

remChamp [22, 35, 4, 65] = [22,35,4]
remChamp [1,5,2,3,5,4] = [1,2,3,5,4]
remChamp [5] = []
-}

import System.IO
remChamp :: [Int]-> [Int]
remChamp [ ] = [ ]
remChamp [_]=[ ]
remChamp (x:xs) 
     |x/= maximum(x:xs) = x:remChamp xs
     |otherwise =remChamp xs
