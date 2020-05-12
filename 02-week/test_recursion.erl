-module(test_recursion).

-export([test_fib/0, test_picies/0]).

test_fib() ->
    0 = recursion:fib(0),
    1 = recursion:fib(1),
    1 = recursion:fib(2),
    2 = recursion:fib(3),
    3 = recursion:fib(4),
    5 = recursion:fib(5),
    8 = recursion:fib(6),
    13 = recursion:fib(7),
    21 = recursion:fib(8),
    34 = recursion:fib(9),
    {ok, "it fib tests passed!"}.

test_picies() ->
    1 = recursion:picies(0),
    2 = recursion:picies(1),
    4 = recursion:picies(2),
    7 = recursion:picies(3),
    11 = recursion:picies(4),
    16 = recursion:picies(5),
    22 = recursion:picies(6),
    29 = recursion:picies(7),
    37 = recursion:picies(8),
    46 = recursion:picies(9),
    {ok, "it picies tests passed!"}.
