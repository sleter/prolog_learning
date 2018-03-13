nalezy(H, [H|T]).
nalezy(E, [H|T]) :-
    /*E \= H,*/
	nalezy(E, T).

polacz([],L,L).
polacz([H|T], L, [H|T1]) :-
	polacz(T, L, T1).

odwroc([],[]).
odwroc([H|T], L):-
    odwroc(T,T1),
    append(T,H,L).
/*
odwrocit([],[]).
odwrocit([X],[X]).
odwrocit([],A,A).
odwrocit([H|T], L) :-
		odwrocit(T,[H],L).
odwrocit([H|T],A,L) :-
		odwrocit(T,[H|A],L).*/

/*przestaw zera na koniec listy*/
p([],L).
p([H|T],L):-
    H=0,
    p(T,L1),
    append(T,H,L).
p([H|T],L):-
    H\=0,
    append([],H,L).
