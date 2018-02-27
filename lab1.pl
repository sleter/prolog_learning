kobieta(ewa).
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

rodzic(adam,ala).
rodzic(adam,piotr).
rodzic(adam,ola).
rodzic(adam,pawel).
rodzic(ewa,ala).
rodzic(ewa,piotr).
rodzic(ewa,ola).
rodzic(ewa,pawel).
rodzic(jan,tomasz).
rodzic(jan,anna).
rodzic(marta,tomasz).
rodzic(marta,anna).
rodzic(ola,roman).
rodzic(tomasz,roman).
rodzic(pawel,iza).
rodzic(anna,iza).

matka(X,Y):-
	kobieta(X),
	rodzic(X,Y).

ojciec(X,Y):-
	mezczyzna(X),
	rodzic(X,Y).

syn(Rodzic,Syn):-
	mezczyzna(Syn),
	rodzic(Rodzic,Syn).

corka(X,Y):-
	kobieta(Y),
	rodzic(X,Y).

brat(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	mezczyzna(Y).

siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(Y).

rodzenstwo(X,Y):-
	brat(X,Y).

rodzenstwo(X,Y):-
	siostra(X,Y).