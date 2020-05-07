% -module(). Named your module.
% -export(). Export your named functions. not always you would like export yours functions.
% mult/2. the /2 is the function arity.
% arity - informes the quantity of parameters we need to pass.
-module(first).
-export([mult/2, double/1, square/1, perimeter/3, area/3]).

mult(X, Y) ->
  X*Y.

double(X) ->
  mult(2, X).

square(X) ->
  mult(X, X).

perimeter(A, B, C) ->
  A + B + C.

% math:sqrt - using the sqrt named function for the math module.
area(A, B, C) ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).
