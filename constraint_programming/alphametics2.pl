:- use_module(library(clpfd)).

cos(Root) :-
   Vars = [K,N,I,F,E,O,R,S,P,U],
   Vars ins 0..9,
   Root = sol(k:K,n:N,i:I,f:F,e:E,o:O,r:R,s:S,p:P,u:U),
   all_different(Vars),
   K#\=0,F#\=0,S#\=0,
   K*10000+N*1000+I*100+F*10+E+
   F*1000+O*100+R*10+K+
   S*10000+P*1000+O*100+O*10+N+
   S*1000+O*100+U*10+P #=
   S*100000+U*10000+P*1000+P*100+E*10+R,
   labeling([leftmost],Vars).
