persona(john).
persona(teofilo).

extranjero(john).
ingreso(john, 200).
ingreso(teofilo, 150).

paga_impuestos1(P) :-
	persona(P),
	ingreso(P, N),
	N >= 100, not(extranjero(P)).

paga_impuestos2(P) :- extranjero(P), !, fail.
paga_impuestos2(P) :- ingreso(P, N), N < 100, !, fail.
paga_impuestos2(P) :- persona(P).
