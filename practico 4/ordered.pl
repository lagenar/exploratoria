ordered(nil).
ordered(tree(Root, nil, nil)) :- integer(Root), !.
ordered(tree(Root, tree(L, LL, LR), nil)) :-
	integer(Root), !, ordered(tree(L, LL, LR)),
	Root >= L.
ordered(tree(Root, nil, tree(R, RL, RR))) :-
	integer(Root), !, ordered(tree(R, RL, RR)),
	Root =< R.
ordered(tree(Root, tree(L, LL, LR), tree(R, RL, RR))) :-
	integer(Root),
	Root >= L,
	Root =< R, !,
	ordered(tree(L, LL, LR)),
	ordered(tree(R, RL, RR)).
