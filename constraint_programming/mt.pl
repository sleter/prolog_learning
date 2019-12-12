:- use_module(library(clpfd)).

mt(Sol, Sum) :-
   Triangle = [A,B,C,D,E,F],
   Sol = sol(a:A,b:B,c:C,d:D,e:E,f:F),
   Triangle ins 1..6,
   all_different(Triangle),
   A+B+C #= C+D+E,
   A+B+C #= A+E+F,
   Sum #= A+B+C,
   labeling([ff],Triangle).

