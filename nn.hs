--www.haskell.org/haskellwiki/99_questions/1_to_10

--3
elementAt           :: [a]-> Int -> a
elementAt (x:xs) i  
    | i == 1 = x  
    | otherwise = elementAt xs (i-1)
elementAt [] i       = error "Can't get element from empty list"
