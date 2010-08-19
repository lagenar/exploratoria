producto([], 1).
producto([X|Xs], P) :- producto(Xs, N), P is N*X.
	