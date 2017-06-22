{-A Haskell program to
G H Hardy recounted the following anectode about Srinivasa Ramanujan..

    I remember once going to see him when he was ill at Putney. I had ridden in taxi cab number 1729 and remarked that the number seemed to me rather a dull one, and that I hoped it was not an unfavorable omen. "No," he replied, "it is a very interesting number; it is the smallest number expressible as the sum of two cubes in two different ways."

Define a Ramanujan number to be a positive integer that can be expressed as a sum of two cubes in at least two different ways. The anecdote above says that 1729 is the smallest Ramanujan number: (1729 = 13 + 123 = 93 + 103).

Define a function

ramanujan :: Int -> Int

such that

ramanujan n

is the nth smallest positive number that can be expressed  as a sum of two cubes in at least two different ways.

Examples:

ramanujan 1 = 1729
ramanujan 4 = 20683
-}

import System.IO
cubesums :: Int -> [(Int, Int)]
cubesums n = f 0 (round $ fromIntegral n ** (1/3)) where
    f x y = if y < x then [] else case compare (x^3 + y^3) n of
                EQ -> (x,y) : f (x + 1) (y - 1)
                LT -> f (x + 1) y
                GT -> f x (y - 1)

ramanujan :: Int->Int
ramanujan m =[n | n <- [1..60000], [p,q] <- [cubesums n]] !! (m-1)

