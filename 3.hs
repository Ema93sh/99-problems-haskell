-- Problem 3
-- (*) Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a]->Int->a

elementAt (x:_) 1 = x
elementAt (x:xs) index
        | index > (length xs + 1) = error "Index out of bounds"
        | index > 0 = elementAt xs (index-1)
        | otherwise = error "Index out of bounds"
