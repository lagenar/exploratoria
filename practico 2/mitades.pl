longitud([], 0).
longitud([X|Xs], N) :- longitud(Xs, M), N is M + 1.

m_append([], Ys, Ys).
m_append([X|Xs], Ys, [X|Zs]) :-
	m_append(Xs, Ys, Zs).
	
mitades_a(X, I, D) :-
	m_append(I, D, X),
	longitud(I, N), longitud(D, N).
mitades_a(X, I, D) :-
	m_append(I, D, X),
	longitud(I, N), M is N+1, longitud(D, M).

mitades_b([], [], []).
mitades_b([X], [], [X]).
mitades_b([Xi|Xs], [Xi|Is], Ds) :-
	m_append(Ys, [Xd], Xs),
	mitades_b(Ys, Is, Es),
	m_append(Es, [Xd], Ds).