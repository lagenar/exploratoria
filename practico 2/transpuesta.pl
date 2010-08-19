
primera_columna([], X, X).
primera_columna([C|Cs], [], [[C]|Zs]) :-
	primera_columna(Cs, [], Zs).
primera_columna([C|Cs], [M|Ms], [Z|Zs]) :-
	[C|M] = Z,
	primera_columna(Cs, Ms, Zs).

transpuesta([], []).
transpuesta([X|Xs], Zs) :-
	transpuesta(Xs, Ys),
	primera_columna(X, Ys, Zs).