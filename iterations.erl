-module(iterations).
-export([print_cities/1]).

print_cities([]) ->
  ok; % ok here means terminate the function when the list is empty.

print_cities([H|T]) ->
  io:format('city: ~p ~n', [H]),
  print_cities(T).

%% iterations:print_cities(['Moscow', 'Tokyo', 'Stockholm']). demonstrates the use recursion in erlang to achieve iterations.