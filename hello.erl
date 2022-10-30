-module(hello).
-export([tail_len/1,tail_len/2,start/0]). 

tail_len(L) -> tail_len(L,0). 
tail_len([], Acc) -> Acc; 
tail_len([_|T], Acc) -> tail_len(T,Acc+1). 
% function with the same parameters are separated using the ; operator.else a compilation error will be returned.in the case when the
%parameters are not the same , then the functions will be treated differently.the ; operator means OR.
start() -> 
   X = [1,2,3,4], 
   Y = tail_len(X), 
   io:fwrite("~w",[Y]).

%% Note that erlang does not support local variables.this means that the functions are PURE  and therefore return the same value for the same 
%%parameters passed to it.