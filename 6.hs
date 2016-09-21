-- Problem 6
-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).


isPalindrome [] = False
isPalindrome [x] = True
isPalindrome [x,y] = x == y
isPalindrome (x:xs)
        | (x == (last xs)) && (isPalindrome (init xs)) = True
        | otherwise = False

isPalindrome' xs = xs == (reverse xs)
