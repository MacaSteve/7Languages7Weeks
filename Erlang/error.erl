-module(error).
-export([log/1]).

log({Err, Message}) ->
	io:format("~p: ~p~n", [Err, Message]);
log(Success) ->
	Success.