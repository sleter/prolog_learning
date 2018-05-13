sa(E):-
    number(E).
sa(+(E)):-
    sa(E).
sa(-(E)):-
    sa(E).
sa(E1+E2):-
    sa(E1),
    sa(E2).
sa(E1-E2):-
    sa(E1),
    sa(E2).
sa(E1*E2):-
    sa(E1),
    sa(E2).
sa(E1/E2):-
    sa(E1),
    sa(E2),
    E2 \= 0.

w(E, _):-
    number(E),
    !.
w(X, X).
w(E1+E2, X):-
    !,
    w(E1, X),
    w(E2, X).
w(E1-E2, X):-
    !,
    w(E1, X),
    w(E2, X).
w(E1*E2, X):-
    !,
    w(E1, X),
    w(E2, X).
w(E1/E2, X):-
    !,
    w(E1, X),
    number(E2),
    E2\=0.
w(E1^E2, X):-
    w(E1, X),
    integer(E2),
    E2>=0.


a([0|T]):-
    a1(T).
a1([1,1|T]):-
    a1(T).
a1([1,0|T]):-
    a1(T).
a1([0,0|T]):-
    a2(T).
a2([1,0|T]):-
    a3(T).
a2([0,0,1|T]):-
    a3(T).
a3([1,0|T]):-
    a3(T).
a3([0,0,1|T]):-
    a3(T).
a3([1,1]).

/* 0(1|010)+111(01|0)*0110* */

/* 0111100110 */

b([0|T]):-
    b1(T).
b1([1|T]):-
    b2(T).
b1([0,1,0|T]):-
    b2(T).
b1([1|T]):-
    b1(T).
b1([0,1,0|T]):-
    b1(T).
b2([1,1,1|T]):-
    b3(T).

b3([0,1|T]):-
    b3(T).
b3([0|T]):-
    b3(T).
b3([0,1,1|T]):-
    b4(T).

b4([0|T]):-
    b4(T).

b4([]).