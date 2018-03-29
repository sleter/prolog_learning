/*parzystosc rekurencyjnie*/
rparzysta(0) :- !.
rparzysta(X) :-
	X > 1,
	X1 is X -2,
	rparzysta(X1).

/*parzystosc iteracyjnie*/
iparzysta(N):-
	iparzysta(N, 0), !.
iparzysta(N, N) :- !.
iparzysta(N, A) :-
	A < N,
	A1 is A + 2,
	iparzysta(N, A1).
	
/*podzielnosc przez 3*/
pp3(3) :- !.
pp3(X) :-
	X >3,
	X1 is X - 3,
	pp3(X1).
	
/*silnia rekurencyjnie*/
rsilnia(0, 1) :- !.
rsilnia(N, W) :-
	N > 0,
	N1 is N - 1,
	rsilnia(N1, W1),
	W is N * W1.
	
/*silnia iterecyjnie*/
isilnia(N, W) :-
	N > 0, !,
	isilnia(N, 1, W).
isilnia(1, A, A) :- !.
isilnia(N, A, W) :-
	N1 is N - 1,
	A1 is A * N,
	isilnia(N1, A1, W).
	
/*ciag fibbonaciego rekurencyjnie*/
rfib(0, 0) :- !.
rfib(1, 1) :- !.
rfib(N, W) :-
	N>1,
	A is N - 1,
	B is N - 2,
	rfib(A, C),
	rfib(B, D),
	W is C + D.
	
/*ciag fibbonaciego iteracyjnie*/
ifib(N, W) :-
	N > 1,
	ifib(N, 1, 1, W).
ifib(1, A, _, W).
ifib(N, A1, A2, W) :-
	N1 is N - 1,
	W is A1 + A2,
	ifib(N1, W, W1, X).

add(X,L,L):- member(X,L),!.
add(X,L,[X|L]).

member1(X,[X|L]):- !.
member1(X,[Y|L]):- member1(X,L).

wstaw(E, [H|T], [H|T1] ) :-
	E > H,
	wstaw(E, T, T1).
	
/*sortowanie przez wstawianie*/
wst([], []) :- !.
wst([H], [H]) :- !.
wst([H|T], L) :-
	wst(T, T1),
	wstaw(H, T1, L).

/*znajdz rekurencyjnie*/
znajdz([H], H, []) :- !.
znajdz([H|T], H, T):-
	znajdz(T, Min, T1),
	H < Min.

znajdz([H|T], Min, [H|T1]):-
	znajdz(T, Min, T1),
	H >= Min.

/*sortowanie przez wybieranie*/
wyb([], []) :- !.
wyb([H], [H]) :- !.
wyb(L, [Min|T]) :-
	znajdz(L, Min, T1),
	wyb(T1, T).