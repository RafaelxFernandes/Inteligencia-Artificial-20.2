soma(0,0).
soma(N,S):-
	N > 0,
	NewN is (N - 1),
	soma(NewN, Rest),
	S is (N + Rest).

fatorial(0,1).
fatorial(N,S):-
	N > 0,
	NewN is (N - 1),
	fatorial(NewN, Rest),
	S is (N * Rest).