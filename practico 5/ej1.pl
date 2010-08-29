alergica(clara).
gusta_rock(maria).
gusta_rock(luisa).
conoce(luisa, X, Ts) :- test_trabaja(florista, X, Ts).
conocen(X, X, _) :- !, fail.
conocen(X, Y, Ts) :- conoce(X, Y, Ts).
conocen(X, Y, Ts) :- conoce(Y, X, Ts).

test_trabaja(T, X, Ts) :- member(tr(T,X), Ts).
	
trabaja(florista, X, _) :- not(alergica(X)).
trabaja(directora, X, _) :- not(gusta_rock(X)).
trabaja(jardinera, X, Ts) :-
	not(conocen(X, nelida, Ts)),
	test_trabaja(diseniadora, Y, Ts), not(conocen(X, Y, Ts)).
trabaja(diseniadora, X, Ts) :-
	not(conocen(X, nelida, Ts)),
	test_trabaja(jardinera, Y, Ts), not(conocen(X, Y, Ts)).

trabajan([], _).
trabajan([tr(T, X)|Ts], Trabajos) :-
	trabaja(T, X, Trabajos), trabajan(Ts, Trabajos).

permutacion([], []) :- !.
permutacion(X, [Z|Zs]) :- select(Z, X, Xs), permutacion(Xs, Zs).

trabajos(T) :-
	permutacion([florista, jardinera,
		     directora, diseniadora], [T1, T2, T3, T4]),
	T=[tr(T1,maria), tr(T2,clara),
	   tr(T3,luisa), tr(T4,nelida)],
	trabajan(T, T).		 
	