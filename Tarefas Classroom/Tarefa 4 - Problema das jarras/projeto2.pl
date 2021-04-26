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

acao((J1, J2), passar12, (J1a, J2a)):-
    J1 > 0,
    J1 =< 4,
    J2 >= 0,
    J2 < 3,
    Folga is 3 - J2,	% Folga é a capacidade que J2 ainda pode receber. 
    J1 - Folga < 0, !,	% Se a folga for maior que J1, J1 passa todo seu
    J1a = 0,			% conteúdo para J2 e J1 fica vazia.
    J2a is (J2 + J1),
    J2a =< 3.

acao((J1, J2), passar12, (J1a, J2a)):-
    J1 > 0,
    J1 =< 4,
    J2 >= 0,
    J2 < 3,
    Folga is 3 - J2,	% Se a folga for menor que J1, J1 passa apenas uma parte
    J1a is J1 - Folga,	% do conteúdo para J2, sobrando um pouco em J1.
    J2a is (J2 + Folga),	
    J2a =< 3.

acao((J1, J2), passar21, (J1a, J2a)):-
    J1 >= 0,
    J1 < 4,
    J2 > 0,
    J2 =< 3,
    Folga is 4 - J1,
    Folga >= 0,
    J2 - Folga < 0, !,
    J2a = 0,
    J1a is (J2 + J1),
    J1a =< 4.

acao((J1, J2), passar21, (J1a, J2a)):-
    J1 >= 0,
    J1 < 4,
    J2 > 0,
    J2 =< 3,
    Folga is 4 - J1,
    Folga >= 0,
    J2a is J2 - Folga,
    J1a is (J1 + Folga),
    J1a =< 4.

% Letra C
vizinhos(N, Filhos):- findall(FilhoN, acao(N, _, FilhoN), Filhos).


% Letra D
add_to_frontier(NN, F1, F2):- append(F1, NN, F2).

buscaLargura([Node | _]):- objetivo(Node).
buscaLargura([Node | F1]):-
    vizinhos(Node, NN),
    add_to_frontier(NN, F1, F2),
    buscaLargura(F2).


% Letra E
busca([Node | _], _):- objetivo(Node).
busca([Node | F1], _):-
    vizinhos(Node, [HeadNN | TailNN]), % NN = [ HEAD=(  4,0 ), TAIL(  0,3 )]
    vizinhos(HeadNN, ListaAuxiliar), % Lista = 4,3 / 0,0/ 1,3/ 1,3
    append(TailNN, ListaAuxiliar, ListaFinal), % LF->triggered = 0,3 + Lista ( acima  )
    add_to_frontier([HeadNN | TailNN], F1, [HeadF2 | TailF2]),
    busca([HeadF2 | TailF2], ListaFinal).


% Letra F
buscaF([Node | _]):- objetivo(Node).

% Não membro
buscaF([Node | F1]):-
    vizinhos(Node, [HeadNN | TailNN]), % NN = [ HEAD=(  4,0 ), TAIL(  0,3 )]
    vizinhos(HeadNN, ListaAuxiliar), % ListaAux = 4,3 / 0,0/ 1,3
    append(TailNN, ListaAuxiliar, ListaFinal), % LF = 0,3(TailNN) + ListaAux
    add_to_frontier([HeadNN | TailNN], F1, [HeadF2 | TailF2]),
    not(member(Node, ListaFinal)), !,
    buscaF([HeadF2 | TailF2]). % ListaFinal

% Membro
% O que falta: caso seja membro, não desenvolva. Passe para o próximo par ordenado
% Condição de parada = todas as condições possíveis já estão na lista
buscaF([Node | F1]):-
    vizinhos(Node, [HeadNN | TailNN]), % NN = [ HEAD=(  4,0 ), TAIL(  0,3 )]
    vizinhos(HeadNN, ListaAuxiliar), % ListaAux = Head=4,3 | Tail= 0,0/ 1,3
    %delete([HeadListaAuxiliar | TailListaAuxiliar], Node, ListaSemNode),
    %append(TailNN, ListaAuxiliar, ListaFinal), 
    add_to_frontier([HeadNN | TailNN], F1, [HeadF2 | TailF2]),
    buscaF([HeadF2 | TailF2]). % ListaAuxiliar





