module Main where

colourCombinations :: [(String, String)]
colourCombinations = [(a, b) | a <- colours, b <- colours, a < b]
	where colours = ["Black", "White", "Blue", "Yellow", "Red"]