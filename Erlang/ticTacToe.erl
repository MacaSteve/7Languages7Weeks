-module(ticTacToe).
-export([winner/1]).
-export([allCrosses/1]).
-export([allNaughts/1]).
-export([isLineWinning/1]).
-export([isThereAWinner/1]).
-export([allTheSameSymbol/1]).
-export([runTestCases/0]).

winner(Board) ->
	{P1, P2, P3, P4, P5, P6, P7, P8, P9} = Board,
	AllLines = 
		[
			[P1, P2, P3],[P4, P5, P6],[P7, P8, P9],	% Rows
			[P1, P4, P7],[P2, P5, P8],[P3, P6, P9],	% Columns
			[P1, P5, P9],[P3, P5, P7]				% Diagonals
		],
	isThereAWinner(AllLines).
	

allTheSameSymbol(Line) ->  
	[FirstSymbol,_,_] = Line,
	lists:foldl(fun(X, Result) -> (X == FirstSymbol) and Result end, true, Line).

allCrosses([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == x).
allNaughts([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == o).
isLineWinning(Line) -> allCrosses(Line) or allNaughts(Line).

isThereAWinner([Line]) -> isLineWinning(Line);
isThereAWinner([Head|Tail]) -> isLineWinning(Head) or isThereAWinner(Tail).

runTestCases() ->
	io:format("~p~n", ["test"]).
	%io:format("~p~n", [winner({x,x,x,e,e,e,e,e,e})]),
	%io:format("~p~n", [winner({e,e,e,o,o,o,e,e,e})]),
	%io:format("~p~n", [winner({e,e,e,e,e,e,x,x,x})]),	
	%io:format("~p~n", [winner({x,e,e,e,x,e,e,e,x})]),	
	%io:format("~p~n", [winner({e,e,x,e,x,e,x,e,e})]),	
	%io:format("~p~n", [winner({x,x,e,e,e,e,e,e,e})]).	
	