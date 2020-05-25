-module(tail_recursion).

-export([fib/1, perfect/1]).

fib(N) -> fib(N, 0, 1).

fib(0, Current, _) -> Current;
fib(N, Current, Next) when N > 0 ->
    fib(N - 1, Next, Current + Next).

perfect(1) -> true;
perfect(N) when N > 0 ->
    perfect_number(N, trunc(N / 2), 0).

perfect_number(N, 0, S) -> N == S;
perfect_number(N, M, S) when N rem M == 0 ->
    perfect_number(N, M - 1, S + M);
perfect_number(N, M, S) -> perfect_number(N, M - 1, S).
