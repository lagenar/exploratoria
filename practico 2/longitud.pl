longitud([], 0).
longitud([X|Xs], N) :- longitud(Xs, M), N is M + 1.