module Main where

	-- Write a function that takes a list and returns the same
	-- list in reverse.
	reverseList [] = []
	reverseList [x] = [x]
	reverseList (head:tail) = reverseList(tail) ++ [head]
	
	-- Write a function that builds two-tuples with all the possible combinations
	-- of two of the colours black, white, blue, yellow, and red; with no dups.
	colourCombinations :: [(String, String)]
	colourCombinations = [(a, b) | a <- colours, b <- colours, a < b]
		where colours = ["Black", "White", "Blue", "Yellow", "Red"]
	
	-- Rewrite the above so list can be passed in.
	colourCombinations2 :: [String] -> [(String, String)]
	colourCombinations2 (colours) = [(a, b) | a <- colours, b <- colours, a < b]

	