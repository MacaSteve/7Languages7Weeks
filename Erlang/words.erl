-module(words).
-export([inAString/1]).
-export([inAString2/1]).

inAString([]) -> 0;
inAString([Head | Tail]) -> 
	case Head of 
		" +" -> inAString(Tail);
		_ -> inAString(Tail) + 1
	end.

inAString2([]) 			-> 1;
inAString2([" "|Tail]) -> inAString2(Tail) + 1;
inAString2([_|Tail])	-> inAString2(Tail).

