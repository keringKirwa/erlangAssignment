-module(firstclass). 
-export([start/0]). 

%% anonymous/FIRST CLASS function :are functions without a  name are assigned TO variables.the prototype of these functions do 
%not have functions names , instead declared using the fun keyword.calling them happens with the help of the variable names.
%All anonymous functions in erlang must have the fun keyword and end with the end keyword.


start() -> 
   Fn = fun() -> 
      io:fwrite("~n The Fist Class function was called. ") end,
   Fn(). 
