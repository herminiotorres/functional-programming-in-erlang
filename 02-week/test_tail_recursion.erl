-module(test_tail_recursion).

-export([test_fib/0, test_perfect/0]).

test_fib() ->
    0 = tail_recursion:fib(0),
    1 = tail_recursion:fib(1),
    1 = tail_recursion:fib(2),
    2 = tail_recursion:fib(3),
    3 = tail_recursion:fib(4),
    5 = tail_recursion:fib(5),
    8 = tail_recursion:fib(6),
    13 = tail_recursion:fib(7),
    21 = tail_recursion:fib(8),
    34 = tail_recursion:fib(9),
    {ok, "it fib tests passed!"}.

test_perfect() ->
    false = tail_recursion:perfect(4),
    true = tail_recursion:perfect(6),
    false = tail_recursion:perfect(10),
    true = tail_recursion:perfect(28),
    false = tail_recursion:perfect(160),
    true = tail_recursion:perfect(496),
    false = tail_recursion:perfect(599),
    true = tail_recursion:perfect(8128),
    false = tail_recursion:perfect(12345678),
    true = tail_recursion:perfect(33550336),
    {ok, "it perfect tests passed!"}.
