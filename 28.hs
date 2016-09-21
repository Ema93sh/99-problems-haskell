-- Problem 28
-- Sorting a list of lists according to length of sublists
import Data.List

lsort list = sortOn (\x -> length x) list

lfsort :: [[a]] -> [[a]]
lfsort = concat . lsort . groupBy equalLength . lsort
  where equalLength xs ys = length xs == length ys
