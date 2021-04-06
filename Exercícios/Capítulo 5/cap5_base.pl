f(X,0):- X < 3, !.
f(X,2):- 3 =< X, X < 6, !.
f(X,4):- 6 =< X.

f1(X,0):- X < 3, !.
f1(X,2):- X < 6, !.
f1(X,4).

vencer(a,b).
vencer(c,a).
vencer(d,b).

not(P):- P, !, fail.
not(P).

categ(X, lutador):- vencer(X,_), vencer(_,X).
categ(X, vencedor):- vencer(X,_), not(vencer(_,X)).
categ(X, perdedor):- vencer(_,X), not(vencer(X,_)).

max(X,Y,X):- X >= Y, !.
max(X,Y,Y).

member(X, [X|L]):- !.
member(X, [Y|L]):- member(X, L).

add(X, L, L):- member(X,L), !.
add(X, L, [X|L]).

p(1).
p(2):- !.
p(3).

class(Number, positive):- Number > 0, !.
class(0, zero):- !.
class(Number, negative).

% Incorreto
split([], [], []).
split([X|L], L1, L2):-
	X >= 0,
	add(X, L, [X|L1]),
	split(L, L1, L2).

% Incorreto
difference([], _, []).
difference([X|Set1], Set2, SetDifference):-
	not(member(X, Set2)),
	difference(Set1, Set2, SetDifference).