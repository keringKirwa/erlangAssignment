-module(immutablefile).
-export([testImmutability/1]).%% the exported functions act as an API through which we can call these functions.
-define(M, 34).

testImmutability(P) ->
    M=?M+P,

    io:fwrite(" This is the result : ~p ~n",[M]).





% ~ Erlang  is a dynamically typed programming language. that means that the types of the variables are 
% ~determined at runtime.The variable M is bound: assigned a value and is immutable.to access global variables 
% !UNLIKE other variables we use the ? operator.