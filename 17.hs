-- Problem 17
-- (*) Split a list into two parts; the length of the first part is given.

split [] _ = ([], [])
split (x:xs) n
      | n == 1                       = ([x], xs)
      | n > 0 && n < (length (x:xs)) = let (first, second) = split xs (n-1)
                                          in ((x:first), second)
      | otherwise                    = error "Index out of bound"
