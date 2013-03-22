module Main where
	reverseList [] = []
	reverseList [x] = [x]
	reverseList (head:tail) = reverseList(tail) ++ [head]