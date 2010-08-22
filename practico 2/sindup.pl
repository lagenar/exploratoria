delete(X, [], []).
delete(X, [X|Ys], Zs) :- delete(X, Ys, Zs).
delete(X, [Y|Ys], [Y|Zs]) :- X \= Y, delete(X, Ys, Zs).

sin_duplicados([], []).
sin_duplicados([X|Xs], [X|Zs]) :-  delete(X, Ys, Zs), sin_duplicados(Xs, Ys).

	
