-- Problem 11
-- (*) Modified run-length encoding.

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encode list =  convertToTuple . pack $ list
        where convertToTuple list = map (\x -> (length x, head x)) list
              pack [] = []
              pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encodeModified list = map encodeHelper $ encode list
          where encodeHelper (1, x) = Single x
                encodeHelper (x, y) = Multiple x y
