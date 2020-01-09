:- use_module(library(clpfd)).

wk(sol(pf:PF, ns:NS, wp:WP, sg:SG, hgl:HGL)) :-
   Vars = [PF, NS, WP, SG, HGL],
   Vars ins 1..5,
   PF #< NS,
   (WP #= PF) #<==> (HGL #\= SG),
   ((PF-SG) #= (SG-WP)) #<==> (WP #> NS),
   labeling([ff],Vars).
