-- Problem 2
-- (*) Find the last but one element of a list.

myButLast list = case list of
                  x:y:[] -> x
                  x:xs -> myButLast xs


myButLast1 :: [a] -> a
myButLast1 = last . init
