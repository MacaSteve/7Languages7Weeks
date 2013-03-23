module Main where

	-- Write a sort that takes a list and returns a sorted list.
	sortList ::  Ord a => [a] -> [a]
	sortList [] = []
	sortList (head:tail) = (sortList smaller) ++ [head] ++ (sortList largerOrEqual)
		where 
			smaller = [s | s <- tail, s < head]
			largerOrEqual = [l | l <- tail, l >= head]
		

	runTests :: IO ()
	runTests = do
		putStrLn $ show $ "Running Tests..."
		putStrLn $ show $ sortList [2, 3, 4, 1, 5, 8, 2]
