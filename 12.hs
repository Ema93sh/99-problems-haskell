-- Problem 12
-- (**) Decode a run-length encoded list.

data ListItem a = Single a | Multiple Int a
    deriving (Show)

decode items = concatMap decodeHelper items
        where decodeHelper (Multiple n x) = replicate n x
              decodeHelper (Single x) = [x]
