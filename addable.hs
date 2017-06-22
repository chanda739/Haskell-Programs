{-
Given two integer matrices m1 and m2, they can be added if the number of rows and number of columns are the same. Define a function

addable :: [[Int]] -> [[Int]] -> Bool

that checks if two matrices are addable.

Examples:

addable [[1,2],[3,4]] [[1,2,3],[4,5,6]] = False
addable [[1,2],[3,4]] [[5,6],[7,8]] = True
-}

import System.IO
num_Rows :: [[Int]] -> Int
num_Rows = length
num_Columns :: [[Int]] -> Int
num_Columns = length . head

addable :: [[Int]] -> [[Int]] -> Bool
addable m n 
 |(num_Rows m==num_Rows n)&&(num_Columns m == num_Columns n) =True
 |otherwise =False










