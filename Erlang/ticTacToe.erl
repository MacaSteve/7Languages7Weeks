-module(ticTacToe).
-export([winner/1]).
-export([allCrosses/1]).
-export([allNaughts/1]).
-export([winningLine/1]).
-export([winner2/1]).
-export([allTheSameSymbol/1]).

% [x,x,x,x,x,x,x,x,x]

winner(Board) ->
	AllLines = 
	[
		[
			[Pos1, Pos2, Pos3],[Pos4, Pos5, Pos6],[Pos7, Pos8, Pos9],
			[Pos1, Pos4, Pos7],[Pos2, Pos5, Pos8],[Pos3, Pos6, Pos9],
			[Pos1, Pos5, Pos9],[Pos3,Pos5,Pos7]
		] ||
		{Pos1, Pos2, Pos3, Pos4, Pos5, Pos6, Pos7, Pos8, Pos9} <- Board
	],
	lists:foldl(func(X, Winner) -> winningLine(X) or Winner end, false, AllLines).
	

allTheSameSymbol(Line) ->  
	[FirstSymbol,_,_] = Line,
	lists:foldl(fun(X, Result) -> (X == FirstSymbol) and Result end, true, Line).

allCrosses([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == x).
allNaughts([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == o).

%allCrosses([Sym1, Sym2, Sym3]) -> (Sym1 == x) and (Sym2 == x) and (Sym3 == x).
%allNaughts([Sym1, Sym2, Sym3]) -> (Sym1 == o) and (Sym2 == o) and (Sym3 == o).

winningLine(Line) -> allCrosses(Line) or allNaughts(Line).

winner2([Line]) -> winningLine(Line);
winner2([Head|Tail]) -> winningLine(Head) or winner2(Tail).