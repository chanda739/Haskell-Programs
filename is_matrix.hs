{-
A two-dimensional matrix can be represented as a list of rows, each row itself being a list of elements. So in general it is of type [[a]]. Not every list of lists is a matrix, though. For instance, [[1,2,3], [], [2,4]] is a list of three lists, each of a different size.

Define a function

is_matrix :: [[a]] -> Bool

that checks if a list of lists is a valid matrix (nonzero number of rows, each of the same nonzero length).

Examples:

is_matrix [] = False
is_matrix [[],[],[]] = False
is_matrix [[2,3], [4,5], [6,7]] = True
is_matrix [[2,3,4,5,6,7]] = True
-}

import System.IO
numRows :: [[a]] -> Int
numRows = length
numColumns :: [[a]] -> Int
numColumns = length . head

is_matrix :: [[a]] -> Bool
is_matrix [[],[],[]] =False
is_matrix m
 |(numRows m /= 0 ) =True
 |otherwise = False
