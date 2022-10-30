-module(highorder). 

-export([map/2,run/0,test/0]). 

map(_, []) -> [];
map(F, [H|T]) -> [F(H)|map(F,T)].

test() ->
    io:format("The HOF executed successfully ~n", []).

highOrder() ->
    fun test/0. % <- functions are called by their Arity (Number of arguments they take) in erlang. 

run() ->
    (highOrder())().
 


%% in the above example, the function map() accepts another function F , a a list of items with the head a =nd the tail.
%map() is a recursive function: for each item in the list, the function F is called and the result populated to the 
%new list .

%to call this function , then we enter the following in the erlang shell : highorder:map(fun(X) -> X + 1 end, L).
