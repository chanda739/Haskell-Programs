{-
Define a function that mulitplies two matrices if they are multiplyable (and returns the empty list if they are not multiplyable).

multiply_matrix :: [[Int]] -> [[Int]] -> [[Int]]

Examples:

multiply_matrix [[1,2],[3,4]] [[1,2,3],[4,5,6]] = [[9,12,15],[19,26,33]]
multiply_matrix [[1,2,3],[4,5,6]] [[1,2],[3,4],[5,6]] = [[22,28],[49,64]]

-}
import System.IO
multiply_matrix :: [[Int]] -> [[Int]] -> [[Int]]
multiply_matrix m n = [ map (dotProduct row) (transpose n) | row <- m ]

dotProduct :: [Int] -> [Int] -> Int
dotProduct v w = sum ( zipWith (*) v w )


transpose :: [[a]] -> [[a]]
transpose [] = []
transpose ([]:xss) = transpose xss
transpose ((x:xs) : xss) = (x : [h | (h:t) <- xss]) : 
                           transpose (xs : [t | (h:t) <- xss])
