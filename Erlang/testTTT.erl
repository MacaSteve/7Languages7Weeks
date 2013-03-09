-module(testTTT).
-compile(export_all).

runTestCases() ->
	io:format("~p~n", [(ticTacToe:winner({x,x,x,e,e,e,e,e,e}) == x)]),
	io:format("~p~n", [(ticTacToe:winner({e,e,e,o,o,o,e,e,e}) == o)]),
	io:format("~p~n", [(ticTacToe:winner({e,e,e,e,e,e,x,x,x}) == x)]),	
	io:format("~p~n", [(ticTacToe:winner({x,e,e,e,x,e,e,e,x}) == x)]),	
	io:format("~p~n", [(ticTacToe:winner({e,e,x,e,x,e,x,e,e}) == x)]),	
	io:format("~p~n", [(ticTacToe:winner({x,x,e,e,e,e,e,e,e}) == "No winner!")]).	
	