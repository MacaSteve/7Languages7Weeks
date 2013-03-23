module Main where

	-- Write a sort that takes a list and returns a sorted list.
	sortList ::  Ord a => [a] -> [a]
	sortList [] = []
	sortList (head:[]) = [head]
	sortList (head:tail) = (sortList smaller) ++ [head] ++ (sortList largerOrEqual)
		where 
			smaller = [s | s <- tail, s < head]
			largerOrEqual = [l | l <- tail, l >= head]
	
	-- Write a sort that takes a list and a function that compares two args
	-- and returns a sorted list.
	sortWithFunc :: (a -> a -> Bool) -> [a] -> [a]
	sortWithFunc func [] = []
	sortWithFunc func (head:[]) = [head]
	sortWithFunc func (head:tail) = (sortWithFunc func smaller) ++ [head] ++ (sortWithFunc func largerOrEqual)
		where
			smaller = filter (\x -> (func x head)) tail
			largerOrEqual = filter (\x -> (not (func x head))) tail
	
	lessThan :: Ord a => a -> a -> Bool
	lessThan x y = x < y
	
	lengthLessThan :: [a] -> [a] -> Bool
	lengthLessThan x y = length x < length y

	runTests :: IO ()
	runTests = do
		putStrLn $ show $ "Running Tests..."
		putStrLn $ show $ sortList [2, 3, 4, 1, 5, 8, 2]
		putStrLn $ show $ sortWithFunc lessThan [2, 3, 4, 1, 5, 8, 2]
		putStrLn $ show $ sortWithFunc lessThan ["sort", "this", "sentence", "by", "word", "comparison"]
		putStrLn $ show $ sortWithFunc lengthLessThan ["sort", "this", "sentence", "in", "string", "length", "order"]

