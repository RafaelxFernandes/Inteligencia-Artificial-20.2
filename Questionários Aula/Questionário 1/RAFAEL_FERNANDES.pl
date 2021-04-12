parent(pam,bob).
parent(tom,bob).
parent(pam,liz). % adicionado para testes
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).

not(P):- P, !, fail.
not(P).

% Resolução do exercício em aula
irmaos(X,Y):-
	father(F,X),
	father(F,Y),
	mother(M,X),
	mother(M,Y).

% Correção do exercício
irmaosCorrigido(X,Y):-
	father(F,X),
	father(F,Y),
	mother(M,X),
	mother(M,Y),
	X \= Y. % <==========

% Resolução usando cut e negação
// Perguntar

% Meio-irmão
meioIrmao(X, Y):-
	X \= Y,
	not(irmaosCorrigido(X,Y)),
	(father(F,X),
	father(F,Y);
	mother(M,X),
	mother(M,Y)).
