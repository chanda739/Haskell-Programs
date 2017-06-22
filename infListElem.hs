{-
Define an infinite list

infList :: [Integer]

with the following properties. 
	a) The list is in strictly increasing order
	b) The list begins with the number 1
	c) If the list contains the number x, it also contains 2x, 3x and 5x
	d) The list contains no other numbers

For example the first 20 elements of infList are [1,2,3,4,5,6,8,9,10,12,15,16,18,20,24,25,27,30,32,36].

Define a function

infListElem :: Int -> Int

such that

infListElem n

returns the nth element of infList.
-}
import System.IO
merge xxs@(x:xs) yys@(y:ys) 
              | x == y = x : merge xs ys
              | x < y = x : merge xs yys
              | x > y = y : merge xxs ys
infList = 1 : merge (map (2*) infList)
                                    (merge (map (3*) infList)
                                                 (map (5*) infList))
infListElem :: Int -> Int
infListElem n = infList!!(n-1)
