-- Problem 14
-- (*) Duplicate the elements of a list.

dupli list = concatMap (\x -> [x, x]) list
