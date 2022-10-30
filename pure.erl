%% ? Functional programming languages are purely made up of functions , therefore no support for global variables
%% that means that for the same argument list , the function returns the same result : why ? The local variables are created and 
% die as per the life cycle of the function.with this property, the function therefore is pure : and in the case when the we expect the 
%same parameter list , we can just replace the function expressions with the simplest forms of these expressions , that is the data types 
% such as strings , int , float , double , etc.In this way , we do not affect the flow of the functionality of the system .
% !ref transparency is therefore only possible when we have the same argument list coming in ALL the times .
% ~ On the other hand,functions that are not referentially transparent are said to be ref Opaque.and therefore ref transparency is a property of pure  functions .


-module(pure).
-export([addOneToTwo/1]). 

addOneToTwo(X) -> 
   Fn = fun() ->
    Result=X+2,
    io:fwrite("The Result is : ~w ~n  ",[Result]) end,
   Fn(). 