-module(ticTacToe).
-export([winner/1]).
-export([allCrosses/1]).
-export([allNaughts/1]).
-export([isLineWinning/1]).
-export([isThereAWinner/1]).
-export([allTheSameSymbol/1]).
-export([whoIsTheWinner/1]).

winner(Board) ->
	{P1, P2, P3, P4, P5, P6, P7, P8, P9} = Board,
	AllLines = 
		[
			[P1, P2, P3],[P4, P5, P6],[P7, P8, P9],	% Rows
			[P1, P4, P7],[P2, P5, P8],[P3, P6, P9],	% Columns
			[P1, P5, P9],[P3, P5, P7]				% Diagonals
		],
	whoIsTheWinner(AllLines).
	

allTheSameSymbol(Line) ->  
	[FirstSymbol,_,_] = Line,
	lists:foldl(fun(X, Result) -> (X == FirstSymbol) and Result end, true, Line).

allCrosses([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == x).
allNaughts([Sym1, Sym2, Sym3]) -> allTheSameSymbol([Sym1, Sym2, Sym3]) and (Sym1 == o).
isLineWinning(Line) -> allCrosses(Line) or allNaughts(Line).

isThereAWinner([Line]) -> isLineWinning(Line);
isThereAWinner([Head|Tail]) -> isLineWinning(Head) or isThereAWinner(Tail).

whoIsTheWinner([Line]) -> 
	[Sym,_,_] = Line,
	case isLineWinning(Line) of
		true -> Sym;
		false -> "No winner!"
	end;

whoIsTheWinner([Head|Tail]) ->
	[Sym,_,_] = Head,
	case isLineWinning(Head) of
		true -> Sym;
		false -> whoIsTheWinner(Tail)
	end.
