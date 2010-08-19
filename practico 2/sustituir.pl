sustituir(V, S, [], []).
sustituir(V, S, [V|Vs], [S|Zs]) :-
	sustituir(V, S, Vs, Zs).
sustituir(V, S, [K|Vs], [K|Zs]) :-
	V \= K, sustituir(V, S, Vs, Zs).