-- Problem 20
-- (*) Remove the K'th element from a list.

removeAt k list = let (first, second) = splitAt k list
                  in (last first, (init first $ second))
