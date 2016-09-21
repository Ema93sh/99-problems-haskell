-- Problem 23
-- Extract a given number of randomly selected elements from a list.
import System.Random

randomSelect' xs n acc
    | n == 0                   = return acc
    | n < 0  || n > length xs  = error "Cant be less than zero or more than length of list"
    | otherwise                = do
                                  index <- randomRIO (0, length xs - 1)
                                  let (ys, (z:zs)) = splitAt index xs
                                      in randomSelect' (ys++zs) (n-1) (z:acc)

randomSelect xs n = randomSelect' xs n []
