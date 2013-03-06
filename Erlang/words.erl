-module(words).
-export([inAString/1]).

inAString(One) -> 1;
inAString(One, Two | Rest) -> inAString(Rest) + 1.