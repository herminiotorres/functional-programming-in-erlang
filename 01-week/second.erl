-module(second).
-export([hypotenuse/2, sine/2, cosine/2, tangent/2]).

% CA - Adjacent Cateto
% CO - Opposite Cateto
hypotenuse(CA, CO) ->
  math:sqrt(first:square(CA) + first:square(CO)).

% H - hypotenuse
% CA - Adjacent Cateto
% CO - Opposite Cateto
% first:perimeter - Calling the module first and perimeter named function.
perimeter(CA, CO) ->
  H = hypotenuse(CA, CO),
  first:perimeter(CA, CO, H).

% CA - Adjacent Cateto
% CO - Opposite Cateto
area(CA, CO) ->
  H = hypotenuse(CA, CO),
  first:area(CA, CO, H).
