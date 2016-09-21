-- Problem 5
-- (*) Reverse a list.

myReverse1 :: [a]->[a]
myReverse1 [] = []
myReverse1 [x] = [x]
myReverse1 (x:xs) = myReverse1 xs ++ [x]

-- tail recursion
myReverse' [] acc = acc
myReverse' [x] acc = x:acc
myReverse' (x:xs) acc = myReverse' xs (x:acc)

myReverse list = myReverse' list []
