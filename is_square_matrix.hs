{- A square matrix is one where the number of rows is equal to the number of columns. Define a function

is_square_matrix :: [[a]] -> Bool

that checks if a list of lists is a square matrix.

Examples:

is_square_matrix [] = False
is_square_matrix [[],[],[]] = False
is_square_matrix [[1]] = True
is_square_matrix [[1,2,3], [4,5,6], [7,8,9]] = True
-}
import System.IO
numRows :: [[a]] -> Int
numRows = length
numColumns :: [[a]] -> Int
numColumns = length . head

is_square_matrix :: [[a]] -> Bool
is_square_matrix [] =False
is_square_matrix m
 |(numRows m == numColumns m ) =True
 |otherwise = False
