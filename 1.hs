-- Problem 1
-- (*) Find the last element of a list.

myLast list = case list of
              [x] -> x
              x:xs -> myLast xs
