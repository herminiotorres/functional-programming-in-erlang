-module(test_list).

-export([test_maximum/0, test_product/0]).

test_product() ->
    1 = list:product([]),
    1 = list:product([1]),
    2 = list:product([1, 2]),
    6 = list:product([1, 2, 3]),
    24 = list:product([1, 2, 3, 4]),
    120 = list:product([1, 2, 3, 4, 5]),
    {ok, "it product tests passed!"}.

test_maximum() ->
    0 = list:maximum([]),
    1 = list:maximum([1]),
    2 = list:maximum([1, 2]),
    2 = list:maximum([2, 2]),
    3 = list:maximum([1, 2, 3]),
    3 = list:maximum([1, 3, 2]),
    3 = list:maximum([2, 3, 1]),
    3 = list:maximum([3, 2, 1]),
    3 = list:maximum([3, 2, 2]),
    {ok, "it maximum tests passed!"}.
