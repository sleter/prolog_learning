kobieta(ewa). /*kobieta(ewa) :- !., X = ewa. nic wiecej*/
kobieta(ala).
kobieta(ola).
kobieta(marta).
kobieta(anna).
kobieta(iza).

mezczyzna(adam).
mezczyzna(piotr).
mezczyzna(pawel).
mezczyzna(jan).
mezczyzna(tomasz).
mezczyzna(roman).

rodzic(adam, ala).
rodzic(adam, piotr).
rodzic(adam, ola).
rodzic(adam, pawel).
rodzic(ewa, ala).
rodzic(ewa, piotr).
rodzic(ewa, ola).
rodzic(ewa, pawel).
rodzic(jan, tomasz).
rodzic(jan, anna).
rodzic(marta, tomasz).
rodzic(marta, anna).
rodzic(tomasz, roman).
rodzic(ola, roman).
rodzic(pawel, iza).
rodzic(anna, iza).

ojciec(X, Y) :-
	mezczyzna(X),
	rodzic(X, Y).
	
matka(X, Y) :-
	kobieta(X),
	rodzic(X, Y).
	
/*corki Y*/
szukaj_corka(X, Y) :-
	kobieta(Y),
	rodzic(X, Y).

/*synowie Y*/	
szukaj_syn(X, Y) :-
	mezczyzna(Y),
	rodzic(X, Y).
	
/*czyj¹ corka jest X*/
corka(X, Y) :-
	kobieta(X),
	matka(Y, X).
	
corka(X, Y) :-
	kobieta(X),
	ojciec(Y, X).
	
/*czyim synem jest X*/	
syn(X, Y) :-
	mezczyzna(X),
	fail,
	matka(Y, X).
	
syn(X, Y) :- 
	mezczyzna(X),
	ojciec(Y, X).

/*Wypisywanie kobiet*/	
wk :- 
	kobieta(X), write(X), nl, fail.
wk.

wkl :-
setof(X, kobieta(X), L),
write(L).
wkl.

/*wszystkie córki które maj¹ siostry*/	
wcc(X) :- 
	corka(X,_), rodzenstwo(X,Y), kobieta(Y).

wcc :- 
    setof(X, wcc(X), L),
	write(L).
wcc.

/* czyim bratem jest X */
brat(X, Y) :- 
	mezczyzna(X),
	rodzic(Z, X),
	rodzic(Z, Y),
	X\=Y.

	/*X, jest rodzenstwem Y*/
rodzenstwo(X, Y) :-
	 rodzic(Z, X),
	 rodzic(Z, Y),
	 X\=Y.

	 /*X jest kuzynostwem Y*/
kuzynostwo(X, Y) :-
	rodzic(AX, X),
	rodzic(AY, Y),
	brat(AX, AY).

	/*X jest kuzynem Y*/
kuzyn(X, Y) :-
	mezczyzna(X),
	rodzic(Z, X),
	rodzic(W, Y),
	rodzenstwo(Z, W).
	
	/*X jest babcia Y*/
babcia(X, Y) :-
	kobieta(X),
	rodzic(X, Z),
	rodzic(Z, Y).
	
	/*X jest dziadkiem Y*/
dziadek(X, Y) :-
	mezczyzna(X),
	rodzic(X, Z),
	rodzic(Z, Y).
	
	/*X jest przodkiem Y*/
przodek(X, Y):-
	rodzic(X, Y).
	przodek(X, Y) :-
		rodzic(X, Z),
		przodek(Z, Y).
		
/*echo*/
echo :-
read(X),
write(X),
nl,
X \= stop,
echo.

echo.

/*echo Dr. style*/
becho :- 
	repeat,
	read(X),
	obsluz(X).
obsluz(stop) :- !.
obsluz(X) :- 
	x \= stop,
	write(X), 
	nl,
	fail.