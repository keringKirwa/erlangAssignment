-module(rec). 
-export([fac/1,start/1]). 

fac(N) when N == 0 -> 1; 
fac(N) when N == 1 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

%the comma actually is  used to separate things in series , just as in the case of the functions that make up the body of a function.

start(P) -> 
   X = fac(P), 
   io:fwrite("~w ~n",[X]).