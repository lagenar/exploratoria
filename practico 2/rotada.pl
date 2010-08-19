m_append([], Ys, Ys).
m_append([X|Xs], Ys, [X|Zs]) :-
	m_append(Xs, Ys, Zs).

rotada_n(N, [], []).
rotada_n(0, [X|Xs], [X|Xs]).
rotada_n(1, [X|Xs], Zs) :-
	m_append(Xs, [X], Zs).
rotada_n(N, Xs, Zs) :-
	N > 1,
	M is N-1, rotada_n(M, Xs, Ys), rotada_n(1, Ys, Zs).