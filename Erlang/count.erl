-module(count).
-compile(export_all).

upTo(Max) -> upToMax(1,Max).

upToMax(N,Max) when N > Max -> "Finished";
upToMax(N,Max) when N =< Max ->
	io:format("~p~n", [N]),
	upToMax(N+1,Max).
