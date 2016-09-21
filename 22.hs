-- Problem 22
-- Create a list containing all integers within a given range.

range' i j = [i..j]

range i j
    | i == j = [i]
    | i < j = i:(range (i+1) j)
    | i > j = i:(range (i-1) j)
