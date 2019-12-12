:- use_module(library(clpfd)).

money(Sol) :-
   Vars = [N,O,G,U,H,T],
   Vars ins 0..9,
   Sol = sol(n:N,o:O,g:G,u:U,h:H,t:T),
   all_different(Vars),
   N #\= 0, G #\= 0, H #\= 0,
   N*10 + O +
   G*100 + U*10 + N +
   N*10 + O #=
   H*1000 + U*100 + N*10 + T,
   labeling([leftmost],Vars).
