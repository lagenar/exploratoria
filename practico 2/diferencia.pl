diferencia([], [], []).
diferencia([X|Xs], [Y|Ys], [Z|Zs]) :- Z is X-Y, diferencia(Xs, Ys, Zs).