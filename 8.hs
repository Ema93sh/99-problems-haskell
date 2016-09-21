-- Problem 8
-- (**) Eliminate consecutive duplicates of list elements.


compress [x] = [x]
compress (x:y:xs)
        | x == y = compress (x:xs)
        | otherwise = x : compress (y:xs)
