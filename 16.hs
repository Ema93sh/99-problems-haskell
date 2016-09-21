-- Problem 16
-- (**) Drop every N'th element from a list.
import Debug.Trace

dropEvery list n
      | n > length list = list
      | otherwise = let (first, second) = splitAt n list
                      in
                      init first ++ (dropEvery second n)
