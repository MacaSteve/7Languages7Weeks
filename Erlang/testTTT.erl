-module(testTTT).
-compile(export_all).

runTestCases() ->
	io:format("~p~n", [(ticTacToe:winner({x,x,x,e,e,e,e,e,e}) == true)]),
	io:format("~p~n", [(ticTacToe:winner({e,e,e,o,o,o,e,e,e}) == true)]),
	io:format("~p~n", [(ticTacToe:winner({e,e,e,e,e,e,x,x,x}) == true)]),	
	io:format("~p~n", [(ticTacToe:winner({x,e,e,e,x,e,e,e,x}) == true)]),	
	io:format("~p~n", [(ticTacToe:winner({e,e,x,e,x,e,x,e,e}) == true)]),	
	io:format("~p~n", [(ticTacToe:winner({x,x,e,e,e,e,e,e,e}) == false)]).	
	