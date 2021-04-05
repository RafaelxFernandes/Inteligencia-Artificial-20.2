par([]).
par([X|Y]):- impar(Y).
impar([_]).
impar([X|Y]):- par(Y).

member(X, [X|_]).
member(X, [_|L]):- member(X,L).

append([], L, L).
append([X|L1], L2, [X|L3]):- append(L1, L2, L3).

member1(X,L):- append(_, [X|_], L).

add(X, L, [X|L]).

del(X, [X|Tail], Tail).
del(X, [Y|Tail], [Y, Tail1]):- del(X, Tail, Tail1).

insert(X, List, BiggerList):- del(X, BiggerList, List).

member2(X, List):- del(X, List, _).

sublist(S, L):-
	append(L1, L2, L),
	append(S, L3, L2).

permutation([], []).
permutation([X|L], P):-
	permutation(L, L1),
	insert(X, L1, P).

permutation2([], []).
permutation2(L, [X|P]):-
	del(X, L, L1),
	permutation2(L1, P).


reverse([], []).
reverse([First|Rest], ReversedList):-
	append(ReversedRest, [First], ReversedList),
	reverse(Rest, ReversedRest).

shift([Head|Tail], Shifted):- append(Tail, [Head], Shifted).

dividelist([], [], []).
dividelist([X], [X], []).
dividelist(List, List1, List2):- dividelist([X, Y| List], [X|List1], [Y|List2]).

gcd(X, X, X).
gcd(X, Y, D):-
	X < Y,
	Y1 is Y - X,
	gcd(X, Y1, D).
gcd(X, Y, D):-
	Y < X,
	gcd(Y, X, D).

length1([], 0).
length1([_|Tail], N):-
	length1(Tail, N1),
	N is N1 + 1.

length2([_, Tail], N):-
	N = 1 + N1,
	length2(Tail, N1).

length3([_, Tail], 1 + N):- 
	length3(Tail, N).

between(N1, N2, N1):- N1 =< N2.
between(N1, N2, X):-
	N1 < N2,
	Between is N1 + 1,
	between(Between, N2, X).