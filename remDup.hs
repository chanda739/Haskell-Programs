{-A Haskell program to
Define a function remDup :: [Int] -> [Int] that removes duplicates from a list of integers. 
That is, if any element of the list is repeated many times, only the first occurrence of the
element should be retained and the others discarded.

Examples:

remDup [1,1,2,2,3,3,4,4,4] = [1,2,3,4]
remDup [1,2,3,3,2] = [1,2,3]
-}

import System.IO
remDup :: [Int] -> [Int]
remDup= rdHelper [ ]
    where rdHelper seen [ ] = seen
          rdHelper seen (x:xs)
              | x `elem` seen = rdHelper seen xs
              | otherwise = rdHelper (seen ++ [x]) xs
                
