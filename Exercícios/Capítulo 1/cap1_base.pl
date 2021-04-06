parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(jim, karl).

female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

offspring(Y,X):-
	parent(X,Y).

mother(X,Y):-
	parent(X,Y),
	female(X).

grandparent(X,Z):-
	parent(X,Y),
	parent(Y,Z).

sister(X,Y):-
	parent(Z,X),
	parent(Z,Y),
	female(X).


predecessor(X,Y):- parent(X,Y).
predecessor(X,Y):- parent(X,Z), predecessor(Z,Y).

ancestral2(X,Y):- parent(X,Z), ancestral2(Z,Y).
ancestral2(X,Y):- parent(X,Y).

ancestral3(X,Y):- parent(X,Y).
ancestral3(X,Y):- ancestral3(X,Z), parent(Z,Y).

ancestral4(X,Y):- ancestral4(X,Z), parent(Z,Y).
ancestral4(X,Y):- parent(X,Y).
