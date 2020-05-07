% consulting the test_pattern_matching
% for more comprehensive knowledge.

-module(pattern_matching).

-export([
         is_zero/1,
         xOr/2,
         xOr1/2,
         xOr2/2,
         max_three/3,
         how_many_equal/3
        ]).

is_zero(0) -> true;
is_zero(_) -> false.

xOr(true, true) -> true;
xOr(false, true) -> true;
xOr(_,_) -> false.

xOr1(X, Y) -> X =/= Y.

xOr2(X, Y) -> not X == Y.

max_three(A,B,C) -> max_two(A, max_two(B, C)).

how_many_equal(X,X,X) -> 3;
how_many_equal(X,X,_) -> 2;
how_many_equal(X,_,X) -> 2;
how_many_equal(_,X,X) -> 2;
how_many_equal(_,_,_) -> 0.

max_two(X, Y) ->
  if X >= Y -> X;
     X < Y -> Y
  end.
