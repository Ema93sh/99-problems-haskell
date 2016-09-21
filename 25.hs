-- Problem 25
-- Generate a random permutation of the elements of a list.
import System.Random
import Debug.Trace

randomSelect xs n acc
    | n == 0                   = return acc
    | n < 0  || n > length xs  = error "Cant be less than zero or more than length of list"
    | otherwise                = do
                                  index <- randomRIO (0, length xs - 1)
                                  let (ys, (z:zs)) = splitAt index xs
                                      in randomSelect (ys++zs) (n-1) (z:acc)

randomPermutation xs = randomSelect xs (length xs) []
