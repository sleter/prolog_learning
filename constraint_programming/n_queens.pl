:- use_module(library(clpfd)).
 
nq(N, Queens) :-
    length(Queens, N),
    Queens ins 1..N,
    dont_cross(Queens),
    labeling([ff], Queens).

dont_cross([]).
dont_cross([Q|Queens]):-
    dont_attack(Q, Queens, 1),
    dont_cross(Queens).

dont_attack(_, [], _).
dont_attack(ActualQ, [Q|Queens], DistanceFromAQ):-
    ActualQ #\= Q,
    abs(ActualQ - Q) #\= DistanceFromAQ,
    NewDistance #= DistanceFromAQ+1,
    dont_attack(ActualQ, Queens, NewDistance).
