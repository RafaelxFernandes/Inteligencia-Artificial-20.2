% Exercício 1

prog1([], L, L).
prog1([HeadL1 | TailL1], L2, L3):-
        member(HeadL1, L2), !,
        prog1(TailL1, L2, L3).
prog1([HeadL1 | TailL1], L2, [HeadL1 | TailL3]) :-
        prog1(TailL1, L2, TailL3).


% Exercício 2

prog2(_, [], []).
prog2(L1, [HeadL2 | TailL2], [HeadL2 | TailL3]) :-
    not(member(HeadL2, L1)), !,
    prog2(L1, TailL2, TailL3).
prog2(L1, [_ | TailL2], TailL3) :-
    prog2(L1, TailL2, TailL3).