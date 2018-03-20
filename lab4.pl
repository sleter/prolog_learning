/*schemat rekurencyjny*/
sch([],[]).
sch([H|T], [H|T1):-
	H>= 0,
	sc(T, T1).
sc([H|T], [0|T1]):-
	H<0, 
	sc(T,T1). 

/*schemat iteracyjnie*/
schi(L1, L2):-
	sche(L1, [], L2). 
sche([], L,L). 
sche([H|T], A, L):-
	H>=0, 
	append(A, [H], A1), 
	sche(T, A1, L). 
sche([H|T], A, L):-
	H<0, 
	append(A, [0], A1), 
	sche(T, A1, L). 

/*usuwanie elementu*/
del(E, [E | T], T).
del(E, [H | T], [H | T1]) :-
		 del(E, T, T1). 

/*permutacja*/
perm([ ], [ ]).
perm(L, [H | T]) :- 
	del(H, L, L1), 
	perm(L1, T).

/*spr czy lista jest posortowana*/
sorted([ ]).
sorted([_]).
sorted([X, Y| T]) :- 
		X =< Y, 
		sorted([Y | T]).

/*slow sort */
slowsort(L1, L2) :- 
	perm(L1, L2), 
	sorted(L2).

/*wstawianie*/
wstaw(X, [], [X]). 
wstaw(X, [H|T], [X, H|T]):-
	X=<H.
wstaw(X, [H|T], [H|T1]):- 
	X>H, 
	wstaw(X, T, T1). 

/*sortowanie przez wstawianie*/
s_sw([], []). 
s_sw([H], [H]). 
s_sw([H|T], L):- 
	s_sw(T, T1), 
	wstaw(H,T1, L). 

/*min na liscie*/
min([H],H,[]). 
min([H|T], M,[H|T1]):-
	min(T, M, T1), 
	H>M. 
min([H|T], H, T):-
	min(T, M, T1),
	H=<M.
	

/*sortowanie przez wybór*/
s_wy([], []). 
s_wy([H], [H]). 
s_wy(L, [Min|T]):-
	min(L, Min, L1),
	s_wy(L1, T).  

/*rodzielenie elementow*/
split(H, [], [], []). 
split(H, [H1|T1], [H1|T2], T3):-
	H1<H, 
	split(H,T1,T2,T3).
split(H, [H1|T1], T2, [H1|T3]):-
	H1>=H, 
	split(H, T1, T2, T3). 

/*szybkie sortowanie*/	
s_q([], []). 
s_q([H], [H]). 
s_q([H|T], L):-
	split(H, T, Small, Big),
	s_q(Small, SortedSmall), 
	s_q(Big, SortedBig), 
	append(SortedSmall, [H|SortedBig], L). 

/*lacz*/
lacz([], L, L). 
lacz([H1|T1], [H2|T2], [H1|T3]):-


/* WEJSCOWKA = metapredykaty steruj¹ce */	
	

	

