% Dupla
% João Pedro de Paula Oliveira - DRE: 113054857
% Rafael da Silva Fernandes - DRE: 117196229


% Instruções 
% Start é o estado inicial, Saida é a saída
% Exemplo ?-exercicioE((0,0), S)
exercicioE(Start, Saida) :- buscaE([Start], Saida).
exercicioF(Start, Saida) :- buscaF([Start], Saida, []).
exercicioG(Start, Saida) :- buscaG([Start], Saida, []).


% Letra A
objetivo((2,_)).


% Letra B
%	- Encher jarra 1
acao((J1, J2), encher1, (4, J2)):- J1 < 4.

%	- Encher jarra 2
acao((J1, J2), encher2, (J1, 3)):- J2 < 3.

%	- Esvaziar jarra 1
acao((J1, J2), esvaziar1, (0, J2)):- J1 > 0.

%	- Esvaziar jarra 2
acao((J1, J2), esvaziar2, (J1, 0)):- J2 > 0.

% Passar da jarra 1 para a jarra 2
%	- Jarra 1 possui quantidade suficiente para encher jarra 2
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

%	- Jarra 1 possui menos água do que jarra 2 pode receber
acao((J1, J2), passar12, (J1a, J2a)):-
    J1 > 0,
    J1 =< 4,
    J2 >= 0,
    J2 < 3,
    Folga is 3 - J2,	% Se a folga for menor que J1, J1 passa apenas uma parte
    J1a is J1 - Folga,	% do conteúdo para J2, sobrando um pouco em J1.
    J2a is (J2 + Folga),	
    J2a =< 3.


% Passar da jarra 2 para a jarra 1
%	- Jarra 2 possui quantidade suficiente para encher jarra 1
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

%	- Jarra 2 possui menos água do que jarra 1 pode receber
acao((J1, J2), passar21, (J1a, J2a)):-
    J1 >= 0,
    J1 < 4,
    J2 > 0,
    J2 =< 3,
    Folga is 4 - J1,
    Folga >= 0,			% Se a folga for menor que J2, J2 passa apenas uma parte
    J2a is J2 - Folga,	% do conteúdo para J1, sobrando um pouco em J2.
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

colocaFronteira(NN, F1, F2):- append(F1, NN, F2).
colocaFronteiraProfundidade(NN, F1, F2):- append(NN, F1, F2).

% Letra E
buscaE([Nodo|_],[Nodo]) :- objetivo(Nodo).
buscaE([Nodo|Corpo], [Nodo|Sequencia]) :-
    vizinhos(Nodo, Vizinhos),
    colocaFronteira(Vizinhos, Corpo, Fronteira),    
    buscaE(Fronteira, Sequencia).

% Letra F
dif_Listas(_,[],[]).
dif_Listas(L,[H|T],[H|T1]):- not(member(H,L)), !, dif_Listas(L,T,T1).
dif_Listas(L,[_|T],L2):- dif_Listas(L,T,L2).

buscaF([Nodo|_],[Nodo],_) :- objetivo(Nodo), !.
buscaF([Nodo|Corpo], [Nodo|Sequencia],Visitados) :-
    vizinhos(Nodo, Vizinhos),
    dif_Listas(Visitados, Vizinhos, FiltroVisitados),
    colocaFronteira(FiltroVisitados, Corpo, Fronteira),    
    buscaF(Fronteira, Sequencia, [Nodo|Visitados]).

% Letra G
buscaG([Nodo|_],[Nodo],_) :- objetivo(Nodo), !.
buscaG([Nodo|Corpo], [Nodo|Sequencia],Visitados) :-
    vizinhos(Nodo, Vizinhos),
    dif_Listas(Visitados, Vizinhos, FiltroVisitados),
    colocaFronteiraProfundidade(FiltroVisitados, Corpo, Fronteira),    
    buscaG(Fronteira, Sequencia, [Nodo|Visitados]).