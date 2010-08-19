atomos([], 0).
atomos(X, 1) :- X \= [], atom(X).
atomos([X|Xs], N) :- atomos(X, K), atomos(Xs, M), N is K+M.
