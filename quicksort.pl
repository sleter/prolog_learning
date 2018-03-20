/*quick sort*/
s_q([],[]).
s_q([H],[H]).
s_q([H|T],L):-
    rozdziel(T,H,T1,T2),
    s_q(T1,T11),
    s_q(T2,T22),
    append(T11,[H|T22],L).
 
rozdziel([],_,[],[]).
rozdziel([H|T],Y,[H|L],R):-
  H=<Y,
  rozdziel(T,Y,L,R).
rozdziel([H|T],Y,L,[H|R]):-
  H>Y, 
  rozdziel(T,Y,L,R).