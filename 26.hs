-- Problem 26
-- (**) Generate the combinations of K distinct objects
--      chosen from the N elements of a list
import Data.List (tails)

combinations 0 _ = [[]]
combinations n xs = [ y:ys | y:xs' <- tails xs, ys <- combinations (n-1) xs']
