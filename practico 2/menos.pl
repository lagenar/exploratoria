longitud([], 0).
longitud([X|Xs], N) :- longitud(Xs, M), N is M + 1.

m_append([], Ys, Ys).
m_append([X|Xs], Ys, [X|Zs]) :-
	m_append(Xs, Ys, Zs).

menos_n(Xs, N, Zs) :-
	longitud(Xs, M), M >= N, append(Ys, Zs, Xs),
	K is M-N, longitud(Zs, K).