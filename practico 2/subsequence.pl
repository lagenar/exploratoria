subsequence([], Y).
subsequence([S|Ss], [S|Xs]) :-
	subsequence(Ss, Xs).
subsequence([S|Ss], [X|Xs]) :-
	S \= X, subsequence([S|Ss], Xs).