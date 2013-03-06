-module(count).
-export([upTo/1]).
-export([toWord/1]).

upTo(1) -> 1;
upTo(N) -> string:concat(upTo(N-1), N).

toWord(2) -> two;
toWord(3) -> three;
toWord(4) -> four;
toWord(5) -> five;
toWord(6) -> six;
toWord(7) -> seven;
toWord(8) -> eight;
toWord(9) -> nine;
toWord(10) -> ten.