{-
Given two integer matrices m1 and m2, they can be multiplied if the number of columns in m1 is the same as the number of rows in m2. Define a function

multiplyable :: [[Int]] -> [[Int]] -> Bool

that checks if two matrices are multiplyable.

Examples:

multiplyable [[1,2,3],[4,5,6]] [[1,2],[3,4]] = False
multiplyable [[1,2],[3,4]] [[1,2,3],[4,5,6]] = True
-}

import System.IO
numRows :: [[a]] -> Int
numRows = length
numColumns :: [[a]] -> Int
numColumns = length . head

multiplyable :: [[Int]] -> [[Int]] -> Bool
multiplyable m n 
 |numColumns m==numRows n =True
 |otherwise =False
