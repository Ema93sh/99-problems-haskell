-- Problem 13
-- (**) Run-length encoding of a list (direct solution).

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeDirect [] = []
encodeDirect (x:xs) = encodeHelper(takeWhile (==x) (x:xs)) : encodeDirect(dropWhile (==x) xs)
            where encodeHelper [x] = Single x
                  encodeHelper xs = Multiple (length xs) (head xs)
