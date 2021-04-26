% Letra A
% Perguntar se tem problema esse fato ter formato de regra
%objetivo((2, J2)):-
%    J2 >= 0,
%    J2 =< 3.

objetivo((2, 0)).
objetivo((2, 1)).
objetivo((2, 2)).
objetivo((2, 3)).


% Letra B
acao((J1, J2), encher1, (4, J2)):- J1 < 4.
acao((J1, J2), encher2, (J1, 3)):- J2 < 3.
acao((J1, J2), esvaziar1, (0, J2)):- J1 > 0.
acao((J1, J2), esvaziar2, (J1, 0)):- J2 > 0.

% Passar da jarra 1 para jarra 2
% * Jarra 1 cheia e jarra 2 vazia
acao((4, 0), passar12, (1, 3)).

% * Jarra 1 não cheia e jarra 2 vazia
acao((J1, 0), passar12, (0, J1)):- J1 < 4, J1 > 0.

% * Jarra 1 possui menos do que jarra 2 pode receber
acao((J1, J2), passar12, (0, J2a)):-
    J1 > 0,
    J1 < (3 - J2),
    J2 >= 0,
    J2 < 3,
    J2a is J1 + J2.

% * Jarra 1 e jarra 2 não vazias
acao((J1, J2), passar12, (J1a, J2a)):-
    J1 > 0,
    J1 =< 4,
    J2 >= 0,
    J2 < 3,
    J1a is J1 - (3 - J2),
    J1a >= 0,
    J1a =< J1,
    J2a is 3.


% Passar da jarra 2 para jarra 1
% * Jarra 2 cheia e jarra 1 vazia
acao((0, 3), passar21, (3, 0)).

% * Jarra 2 não cheia e jarra 1 vazia
acao((0, J2), passar21, (J2, 0)):- J2 < 3, J2 > 0.

% * Jarra 2 possui menos do que a jarra 2 pode receber
acao((J1, J2), passar21, (J1a, 0)):-
    J2 > 0,
    J2 < (4 - J1),
    J1 >= 0,
    J1 < 4,
    J1a is J1 + J2.

% * Jarra 1 e jarra 2 não vazias
acao((J1, J2), passar21, (J1a, J2a)):-
    J2 > 0,
    J2 =< 3,
    J1 >= 0,
    J1 < 4,
    J2a is J2 - (4 - J1),
    J2a >= 0,
    J2a =< J2,
    J1a is 4.


% Letra C
vizinhos(N, FilhosN):- findall(N, acao(N, _, _), FilhosN).



