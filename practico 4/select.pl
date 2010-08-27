% solo selecciona la primera aparicion
mselect(X, [X|Xs], Xs):-!.
mselect(X, [Y|Ys], [Y|Zs]):- mselect(X,Ys,Zs).
