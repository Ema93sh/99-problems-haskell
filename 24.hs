-- Problem 24
-- Lotto: Draw N different random numbers from the set 1..M.

import System.Random


randomSelect' xs n acc
    | n == 0                   = return acc
    | n < 0  || n > length xs  = error "Cant be less than zero or more than length of list"
    | otherwise                = do
                                  index <- randomRIO (0, length xs - 1)
                                  let (ys, (z:zs)) = splitAt index xs
                                      in randomSelect' (ys++zs) (n-1) (z:acc)

randomSelect xs n = randomSelect' xs n []

randomRange n m = randomSelect [1..m] n
