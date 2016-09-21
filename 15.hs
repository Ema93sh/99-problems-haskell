-- Problem 15
-- (**) Replicate the elements of a list a given number of times.

repli list n = concatMap (\x -> replicate n x) list
