% Lista de adjacências:
% [[A, B], [A, C], [A, D], [A, E], [A, F], [B, F], [C, D], [C, E], [D, E], [E, F]]

% Cores
% Instâncias das 4 cores utilizadas para solucionar o problema
color(red).
color(yellow).
color(blue).
color(green).

% Functor de adjacência
adjacent(X, Y):- 
	color(X), 
	color(Y), 
	X \= Y.

% Functor principal 
map(A, B, C, D, E, F):-
	adjacent(A, B), adjacent(A, C), adjacent(A, D), adjacent(A, E), adjacent(A, F),
	adjacent(B, F), adjacent(C, D), adjacent(C, E), adjacent(D, E), adjacent(E, F).


% Funcionamento do programa:
% O functor map inicialmente chama adjacent(A, B), assim X será substituído por A e Y por B.
% Então, adjacent chama color(X), como X foi substituído por A a chamada se torna color(A).
% O functor color então substituirá A pela primeira instância, no caso, A = red.
% Seguindo a mesma linha de raciocínio, temos que B = yellow.
% Depois, map chama adjacent(A, C). Como já temos que A = red, o programa continuará a mesma linha de raciocínio acima e teremos C = yellow.
% Continuando, teremos que D = yellow, entretanto, temos a seguinte regra em map: adjacent(C, D), e a regra X \= Y em adjacent.
% Dessa forma, teríamos que C = D = yellow, e esse não é um resultado possível. Por essa razão, D será instanciado como a próxima cor, ou seja, D = blue.
% O programa segue essa linha de raciocínio, e por isso a primeira resposta da consulta é:

% A = red,
% B = C, C = yellow,
% D = F, F = blue,
% E = green

% Após todas as combinações possíveis com A = red serem feitas, A será instanciado como a próxima cor ( yellow ), e o raciocínio acima se repete.


% Consulta
% ?- map(A, B, C, D, E, F).


% A imagem do mapa em questão encontra-se nesse link:
%			> ==  Inserir link github do mapa  == <


% Fontes:
% https://www.javatpoint.com/map-coloring-in-prolog
% https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_1.html
% https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_9.html
% https://www.youtube.com/watch?v=6XD7vBbywMc
% http://cs603.cs.ua.edu/lectures/chapter10b-prolog.pdf
% https://www.youtube.com/watch?v=fFacIqoDX6k
% https://www.nosco.ch/ai/en/exercise_02.php