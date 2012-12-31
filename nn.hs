--www.haskell.org/haskellwiki/99_questions

--3
elementAt           :: [a]-> Int -> a
elementAt (x:xs) i  
    | i == 1 = x  
    | otherwise = elementAt xs (i-1)
elementAt [] i       = error "Can't get element from empty list/Index out of bounds"

--4
myLength            :: [a] -> Int
myLength []         = 0
myLength [x]        = 1
myLength (x:xs)     = 1 + myLength(xs)

--5
myReverse           :: [a] -> [a]
myReverse [x]       = [x]
myReverse (x:xs)    = myReverse xs ++ (x:[]) 

--6
isPalindrome            :: Eq a => [a] -> Bool
isPalindrome (x:xs)     = all (True==) [fst pairs == snd pairs |  pairs <- zip (x:xs) (reverse (x:xs)) ]
--isPalindrome (x:xs)     = length (x:xs) == 10
