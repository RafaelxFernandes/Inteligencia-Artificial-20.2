% Exercício 1

prog1(X, [], []).
prog1(X, [Head1 | Tail1], [Head2 | Tail2]):-
	Head2 is (X + Head1),
	prog1(X, Tail1, Tail2).

% Exemplo consulta:
% ?- prog1(1, [1,2,3], L2).
% L2 = [2, 3, 4] ;
% false.


% Exercício 2 

prog2(X, [0]):- X >=0, X < 4.

% regra criada para o caso em que Mod for 0 (zero)
prog2(X, [Head | Tail]):- 
  X >= 4,
  0 is mod(X, 4),
  Resultado is (X - 4),
  Head = X,
  prog2(Resultado, Tail).

prog2(X, L):-
  X >= 4,
  Mod is mod(X, 4),
  Mod > 0,
  Resultado is (X - Mod),
  prog2(Resultado, L).

% Exemplo consulta:
% ?- prog2(8, L).
% L = [8, 4, 0] ;
% false.

% ?- prog2(9, L).
% L = [8, 4, 0] ;
% false.