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

	-- Write a list comprehension to build a childhood multiplication table. 
	-- The table would be a list of three-tuples where the first two are integers 
	-- from 1-12 and the third is the product of the first two.
	multiplicationTables :: [(Int, Int, Int)]
	multiplicationTables = [(a, b, a * b) | a <- [1..12], b <- [1..12]]

	multiplicationTablesFor :: (Int) -> [(Int, Int, Int)]
	multiplicationTablesFor (number) = [(a, b, a * b) | a <- [1..12], b <- [1..12], a == number]

	runTests :: IO ()
	runTests = do
		putStrLn $ show $ "Running Tests..."
		putStrLn $ show $ reverseList [1, 2, 3]
		putStrLn $ show $ colourCombinations
		putStrLn $ show $ colourCombinations2(["blue", "red", "yellow", "orange"])
		putStrLn $ show $ multiplicationTables
		putStrLn $ show $ multiplicationTablesFor(6)
		