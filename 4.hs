-- Problem 4
-- (*) Find the number of elements of a list.

myLength' [] acc = acc
myLength' [x] acc = 1 + acc
myLength' (x:xs) acc = myLength' xs (acc+1)

myLength list = myLength' list 0
