-- Problem 18
-- (**) Extract a slice from a list.

slice list i j
    | i < 1 || j > (length list) = error "Index out of bound"
    | i == 1 && j == (length list) = list
    | i > 1  = slice (drop (i-1) list) 1 (j-i+1)
    | j < (length list) = slice (init list) i j

slice1 list i j | i > 0 = take (j-i+1) $ drop (i-1) list
