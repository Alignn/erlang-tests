-module(second).
-export([hypotenuse/2,perimeter/2,area/2,is_zero/1,xOr/2,xOrAlt/2,xOr1/2,xOr2/2,xOr3/2,maxThree/3,howManyEqual/3]).

hypotenuse(X,Y) ->
	math:sqrt(first:square(X)+first:square(Y)).
	
perimeter(X,Y) -> %should be trianglePerimeter or something really...
	X+Y+hypotenuse(X,Y).
	
area(X,Y) ->
	first:mult(X,Y)/2. %alternatively, first:area(X,Y,hypotenuse(X,Y)).
	
is_zero(0) ->
	true;
is_zero(_) ->
	false.
	
xOr(true,false) ->
	true;
xOr(false,true) ->
	true;
xOr(_,_) ->
	false.

xOrAlt(X,X) ->
	false;
xOrAlt(_,_) ->
	true.
	
xOr1(X,Y) ->
	X =/= Y.
	
xOr2(X,Y) ->
	X == not Y.
	
xOr3(X,Y) ->
	(X or Y) and not (X and Y).
	
maxThree(X,Y,Z) ->
	max(max(X,Y),Z).
	
howManyEqual(X,X,X) ->
	3;
howManyEqual(X,X,_) ->
	2;
howManyEqual(X,_,X) ->
	2;
howManyEqual(_,X,X) ->
	2;
howManyEqual(_,_,_) ->
	0.