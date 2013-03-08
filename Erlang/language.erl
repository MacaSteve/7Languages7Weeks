-module(language).
-export([find/2]).
-export([findInList/1]).

findInList(KeyWord) -> 
	List = [{erlang, "Where's the syntax?"}, {ruby, "Missed that week."}, {scala, "Fence sitter"}, {prolog, "What sort of cake?"}],
	find(List, KeyWord).

find({Language,Description}, KeyWord) when Language == KeyWord -> Description;
find([{Language,Description}|Tail], KeyWord) when Language == KeyWord -> Description;
find([{Language,Description}|Tail], KeyWord) -> find(Tail, KeyWord).

%find(List, KeyWord) ->
%	lists:filter(fun(X) -> ({Language,_} = X) and (Language == KeyWord) end, List).

%find(List, KeyWord) ->
%	lists:filter(fun({Language,_}) Language == KeyWord end, List).
