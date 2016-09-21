-- Problem 19
-- (**) Rotate a list N places to the left.

rotate (x:xs) n | n > 0 = rotate (xs ++ [x]) (n-1)
                | n == 0 = x:xs
