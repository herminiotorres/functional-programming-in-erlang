-module(recursion).

-export([fib/1, picies/1]).

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N > 1 -> fib(N - 1) + fib(N - 2).

picies(0) -> 1;
picies(N) when N > 0 -> picies(N - 1) + N.
