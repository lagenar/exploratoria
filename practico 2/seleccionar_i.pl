seleccionar_i(0, [X|Xs], X).
seleccionar_i(I, [X|Xs], Elem) :-
	I > 0, K is I-1, seleccionar_i(K, Xs, Elem).

	