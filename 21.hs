-- Problem 21
-- Insert an element at a given position into a list.

insertAt x list n = let (first, second) = splitAt (n-1) list
                    in first ++ x:second
