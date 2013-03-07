-module(count).
-compile(export_all).

upTo(Max) -> upToMax(1,Max).

upToMax(N,Max) when N > Max -> "Finished";
upToMax(N,Max) when N =< Max ->
	io:format("~p~n", [N]),
	upToMax(N+1,Max).

upToRev(0) -> "Finished";
upToRev(N) ->
	upToRev(N-1),
	io:format("~p~n", [N]).
