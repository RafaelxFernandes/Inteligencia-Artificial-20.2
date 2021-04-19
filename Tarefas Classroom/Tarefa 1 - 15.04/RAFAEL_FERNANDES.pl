% Exercício 1

prog1(X, [], []).
prog1(X, [Head1 | Tail1], [Head2 | Tail2]):-
	Head2 is (X + Head1),
	prog1(X, Tail1, Tail2).


% Exercício 2 

prog2(X, [0]):- X >=0, X < 4.

% regra criada para o caso em que Mod for 0 (zero)
prog2(X, [Head | Tail]):- 
	X >= 4,
	0 is mod(X, 4),
	Resultado is (X - 4),
	prog2(Resultado, Tail).

prog2(X, L):-
	X >= 4,
	Mod is mod(X, 4),
	Mod > 0,
	Resultado is (X - Mod),
	prog2(Resultado, L).





%%%%%%%%% Jojo
multiplos(0, [0]).
multiplos(X, [H|T]):-
	X >= 4,
	0 is (X mod 4),
	X1 is X - 4,
	H = X,
	multiplos(X1, T).
multiplos(X, R):-
	X >= 4,
	Y is (X mod 4),
	Y > 0,
	X1 is X - Y,
	multiplos(X1, R).
