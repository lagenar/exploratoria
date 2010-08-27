calculo(N, N) :- integer(N), !.
calculo([+, I, D], X) :-
	!, calculo(I, RI), calculo(D, RD), X is RI + RD.
calculo([-, I, D], X) :-
	!, calculo(I, RI), calculo(D, RD), X is RI - RD.
calculo([/, I, D], X) :-
	!, calculo(I, RI), calculo(D, RD), X is RI / RD.
calculo([*, I, D], X) :-
	!, calculo(I, RI), calculo(D, RD), X is RI * RD.