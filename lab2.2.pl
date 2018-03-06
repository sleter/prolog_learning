silnia(0,1).
silnia(N,X):-
	N>0,
	N1 is N-1,
	silnia(N1,X1),
	X is N*X1.

isilnia(N,X):-
	N>0,
	isilnia(N,1,X).
isilnia(0,A,A).
isilnia(N,A,X):-
	N>0,
	A1 is A*N,
	N1 is N-1,
	isilnia(N1,A1,X).

parzysta(0).
parzysta(X):-
	X>1,
	X1 is X-2,
	parzysta(X1).

iparzysta(X,X).
iparzysta(X,A):-
	A1 is A+2,
	X>A,
	iparzysta(X,A1).
iparzysta(X):-
	iparzysta(X,0).


pp3(3) :- !.
pp3(X) :-
	X >3,
	X1 is X - 3,
	pp3(X1).

nieparzysta(1).
nieparzysta(X):-
	X>2,
	X1 is X-2,
	nieparzysta(X1).

fib(0, 1).
fib(1, 1).
fib(X, Z) :-
	X>1,
	N1 is X - 1,
	N2 is X - 2,
	fib(N1, N3),
	fib(N2, N4),
	Z is N3 + N4.

ifib(0,0).
ifib(X,Y):-
	X>0,
	ifib(X,Y,_).
ifib(1,1,0).
ifib(X,Y1,Y2):-
	X>1,
X1 is X-1,
fib(X1,Y2,Y3),
Y1 is Y2 + Y3.
	