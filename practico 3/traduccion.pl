%solo para swi-prolog
:- dynamic diccionario/2.

diccionario(la, the).
diccionario(es, is).
diccionario(edificio, building).
sinonimo(casa, edificio).

traducir([], []).
traducir([P|Ps], [W|Ws]) :- diccionario(P, W), traducir(Ps, Ws).
traducir([P|Ps], [W|Ws]) :-
	sinonimo(P, S), diccionario(S, W),
	asserta(diccionario(P, W)),
	traducir(Ps, Ws).
traducir([P|Ps], [sin_traducir|Ws]) :- traducir(Ps, Ws).