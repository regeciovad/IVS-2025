-- Priklad na Quicksort
-- ghci (interaktivni Haskell)
-- :load haskell_qsort.hs
-- qsort []
-- qsort [12, 4, 42, -9]
-- Zavrani pomoci Ctrl+d

qsort [ ] = [ ]
qsort (x:xs) = qsort small ++ pivot ++ qsort large
    where
        small = [y | y <- xs, y < x]
        pivot = [y | y <- xs, y == x] ++ [x]
        large = [y | y <- xs, y > x]
