-module(test_pattern_matching).

-export([
         test_is_zero/0,
         test_xOr/0,
         test_xOr1/0,
         test_xOr2/0,
         test_max_three/0,
         test_how_many_equal/0
        ]).

test_is_zero() ->
  true = pattern_matching:is_zero(0),
  false = pattern_matching:is_zero(1),
  {ok, "it is_zero tests passed!"}.

test_xOr() ->
  true = pattern_matching:xOr(true, true),
  true = pattern_matching:xOr(false, true),
  false = pattern_matching:xOr(true, false),
  false = pattern_matching:xOr(false, false),
  {ok, "it test_xOr tests passed!"}.

test_xOr1() ->
  false = pattern_matching:xOr1(true, true),
  true = pattern_matching:xOr1(false, true),
  true = pattern_matching:xOr1(true, false),
  false = pattern_matching:xOr1(false, false),
  {ok, "it test_xOr1 tests passed!"}.

test_xOr2() ->
  false = pattern_matching:xOr2(true, true),
  true = pattern_matching:xOr2(false, true),
  true = pattern_matching:xOr2(true, false),
  false = pattern_matching:xOr2(false, false),
  {ok, "it test_xOr2 tests passed!"}.

test_max_three() ->
  3 = pattern_matching:max_three(1,2,3),
  6 = pattern_matching:max_three(6,5,4),
  9 = pattern_matching:max_three(7,9,8),
  {ok, "it max_three tests passed!"}.

test_how_many_equal() ->
  0 = pattern_matching:how_many_equal(1,2,3),
  2 = pattern_matching:how_many_equal(1,2,1),
  2 = pattern_matching:how_many_equal(1,1,2),
  2 = pattern_matching:how_many_equal(2,1,1),
  3 = pattern_matching:how_many_equal(1,1,1),
  {ok, "it how_many_equal tests passed!"}.
