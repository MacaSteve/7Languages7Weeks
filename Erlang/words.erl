-module(words).
-export([inAString/1]).

inAString([]) -> 0;
inAString(["\\s+" | Tail]) -> inAString(Tail) + 1;
inAString([_ | Tail]) -> inAString(Tail).