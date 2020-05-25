-module(list).

-export([maximum/1, product/1]).

product([]) -> 0;
product([Product]) -> Product;
product([First, Second | Tail]) ->
    product([First * Second | Tail]).

maximum([]) -> 0;
maximum([Maximum]) -> Maximum;
maximum([First, Second | Tail]) when First >= Second ->
    maximum([First | Tail]);
maximum([First, Second | Tail]) when First < Second ->
    maximum([Second | Tail]).
