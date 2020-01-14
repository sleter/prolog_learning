:- use_module(library(clpfd)).

swimmers(Sol) :-
   Sol = [a:A, b:B, c:C, d:D, e:E],
   Swimmers = [A,B,C,D,E],
   Swimmers ins 1..5,
   all_different(Swimmers),
   #\(A #\= 1 #/\ B #\= 2),
   #\(D #\= 2 #/\ E #\= 3),
   #\(C #< 4 #/\ D #> 3),
   #\(A #< 4 #/\ C #> 3),
   #\(D #< 4 #/\ E #< 4),   
   label(Swimmers).
