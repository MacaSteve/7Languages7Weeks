-module(language).
-export([find/2]).
-export([findInList/1]).
-export([findWithFilter/2]).

findInList(KeyWord) -> 
	List = [{erlang, "Where's the syntax?"}, {ruby, "Missed that week."}, {scala, "Fence sitter"}, {prolog, "What sort of cake?"}],
	findWithFilter(List, KeyWord).

find({Language,Description}, KeyWord) when Language == KeyWord -> Description;
find([{Language,Description}|Tail], KeyWord) when Language == KeyWord -> Description;
find([{Language,Description}|Tail], KeyWord) -> find(Tail, KeyWord).

findWithFilter(List, KeyWord) ->
	[{_, Description}] = lists:filter(fun(X) -> {Language,_} = X, Language == KeyWord end, List),
	Description.

