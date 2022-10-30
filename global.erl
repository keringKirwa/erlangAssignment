-module(global).
-export([testImmutability/1]).
-define (number, 34).

testImmutability(P) ->
    io:fwrite("~p ~n This is the result :",[number]).