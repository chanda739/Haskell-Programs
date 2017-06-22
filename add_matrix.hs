{-
Define a function that adds two matrices if they are addable (and returns the empty list if they are not addable).

add_matrix :: [[Int]] -> [[Int]] -> [[Int]]

Examples:

add_matrix [[1,2,3,4]] [[5,6,7,8]] = [[6,8,10,12]]
add_matrix [[1,2],[3,4]] [[5,6],[7,8]] = [[6,8],[10,12]]
-}

import System.IO
add_matrix :: [[Int]] -> [[Int]] -> [[Int]]
add_matrix = zipWith vectorSum
vectorSum :: [Int] -> [Int] -> [Int]
vectorSum = zipWith (+)
