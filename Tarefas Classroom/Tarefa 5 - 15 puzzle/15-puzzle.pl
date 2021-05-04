% Objetivo final
objetivo([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,*]).


% Movimentos
% - Esquerda
esquerda([A,*,C,D,E,F,G,H,I,J,K,L,M,N,O,P], [*,A,C,D,E,F,G,H,I,J,K,L,M,N,O,P]).
esquerda([A,B,*,D,E,F,G,H,I,J,K,L,M,N,O,P], [A,*,B,D,E,F,G,H,I,J,K,L,M,N,O,P]).
esquerda([A,B,C,*,E,F,G,H,I,J,K,L,M,N,O,P], [A,B,*,C,E,F,G,H,I,J,K,L,M,N,O,P]).
esquerda([A,B,C,D,E,*,G,H,I,J,K,L,M,N,O,P], [A,B,C,D,*,E,G,H,I,J,K,L,M,N,O,P]).
esquerda([A,B,C,D,E,F,*,H,I,J,K,L,M,N,O,P], [A,B,C,D,E,*,F,H,I,J,K,L,M,N,O,P]).
esquerda([A,B,C,D,E,F,G,*,I,J,K,L,M,N,O,P], [A,B,C,D,E,F,*,G,I,J,K,L,M,N,O,P]).
esquerda([A,B,C,D,E,F,G,H,I,*,K,L,M,N,O,P], [A,B,C,D,E,F,G,H,*,I,K,L,M,N,O,P]).
esquerda([A,B,C,D,E,F,G,H,I,J,*,L,M,N,O,P], [A,B,C,D,E,F,G,H,I,*,J,L,M,N,O,P]).
esquerda([A,B,C,D,E,F,G,H,I,J,K,*,M,N,O,P], [A,B,C,D,E,F,G,H,I,J,*,K,M,N,O,P]).
esquerda([A,B,C,D,E,F,G,H,I,J,K,L,M,*,O,P], [A,B,C,D,E,F,G,H,I,J,K,L,*,M,O,P]).
esquerda([A,B,C,D,E,F,G,H,I,J,K,L,M,N,*,P], [A,B,C,D,E,F,G,H,I,J,K,L,M,*,N,P]). 

% - Direita
direita([*,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P], [B,*,C,D,E,F,G,H,I,J,K,L,M,N,O,P]).
direita([A,*,C,D,E,F,G,H,I,J,K,L,M,N,O,P], [A,C,*,D,E,F,G,H,I,J,K,L,M,N,O,P]).
direita([A,B,*,D,E,F,G,H,I,J,K,L,M,N,O,P], [A,B,D,*,E,F,G,H,I,J,K,L,M,N,O,P]).
direita([A,B,C,D,*,F,G,H,I,J,K,L,M,N,O,P], [A,B,C,D,F,*,G,H,I,J,K,L,M,N,O,P]).
direita([A,B,C,D,E,*,G,H,I,J,K,L,M,N,O,P], [A,B,C,D,E,G,*,H,I,J,K,L,M,N,O,P]).
direita([A,B,C,D,E,F,*,H,I,J,K,L,M,N,O,P], [A,B,C,D,E,F,H,*,I,J,K,L,M,N,O,P]).
direita([A,B,C,D,E,F,G,H,*,J,K,L,M,N,O,P], [A,B,C,D,E,F,G,H,J,*,K,L,M,N,O,P]).
direita([A,B,C,D,E,F,G,H,I,*,K,L,M,N,O,P], [A,B,C,D,E,F,G,H,I,K,*,L,M,N,O,P]).
direita([A,B,C,D,E,F,G,H,I,J,*,L,M,N,O,P], [A,B,C,D,E,F,G,H,I,J,L,*,M,N,O,P]).
direita([A,B,C,D,E,F,G,H,I,J,K,L,*,N,O,P], [A,B,C,D,E,F,G,H,I,J,K,L,N,*,O,P]).
direita([A,B,C,D,E,F,G,H,I,J,K,L,M,*,O,P], [A,B,C,D,E,F,G,H,I,J,K,L,M,O,*,P]).
direita([A,B,C,D,E,F,G,H,I,J,K,L,M,N,*,P], [A,B,C,D,E,F,G,H,I,J,K,L,M,N,P,*]).

% - Cima
cima([A,B,C,D,*,F,G,H,I,J,K,L,M,N,O,P], [*,B,C,D,A,F,G,H,I,J,K,L,M,N,O,P]).
cima([A,B,C,D,E,*,G,H,I,J,K,L,M,N,O,P], [A,*,C,D,E,B,G,H,I,J,K,L,M,N,O,P]).
cima([A,B,C,D,E,F,*,H,I,J,K,L,M,N,O,P], [A,B,*,D,E,F,C,H,I,J,K,L,M,N,O,P]).
cima([A,B,C,D,E,F,G,*,I,J,K,L,M,N,O,P], [A,B,C,*,E,F,G,D,I,J,K,L,M,N,O,P]).
cima([A,B,C,D,E,F,G,H,*,J,K,L,M,N,O,P], [A,B,C,D,*,F,G,H,E,J,K,L,M,N,O,P]).
cima([A,B,C,D,E,F,G,H,I,*,K,L,M,N,O,P], [A,B,C,D,E,*,G,H,I,F,K,L,M,N,O,P]).
cima([A,B,C,D,E,F,G,H,I,J,*,L,M,N,O,P], [A,B,C,D,E,F,*,H,I,J,G,L,M,N,O,P]).
cima([A,B,C,D,E,F,G,H,I,J,K,*,M,N,O,P], [A,B,C,D,E,F,G,*,I,J,K,H,M,N,O,P]).
cima([A,B,C,D,E,F,G,H,I,J,K,L,*,N,O,P], [A,B,C,D,E,F,G,H,*,J,K,L,I,N,O,P]).
cima([A,B,C,D,E,F,G,H,I,J,K,L,M,*,O,P], [A,B,C,D,E,F,G,H,I,*,K,L,M,J,O,P]).
cima([A,B,C,D,E,F,G,H,I,J,K,L,M,N,*,P], [A,B,C,D,E,F,G,H,I,J,*,L,M,N,K,P]).
cima([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,*], [A,B,C,D,E,F,G,H,I,J,K,*,M,N,O,L]).

% - Baixo
baixo([*,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P], [E,B,C,D,*,F,G,H,I,J,K,L,M,N,O,P]).
baixo([A,*,C,D,E,F,G,H,I,J,K,L,M,N,O,P], [A,F,C,D,E,*,G,H,I,J,K,L,M,N,O,P]).
baixo([A,B,*,D,E,F,G,H,I,J,K,L,M,N,O,P], [A,B,G,D,E,F,*,H,I,J,K,L,M,N,O,P]).
baixo([A,B,C,*,E,F,G,H,I,J,K,L,M,N,O,P], [A,B,C,H,E,F,G,*,I,J,K,L,M,N,O,P]).
baixo([A,B,C,D,*,F,G,H,I,J,K,L,M,N,O,P], [A,B,C,D,I,F,G,H,*,J,K,L,M,N,O,P]).
baixo([A,B,C,D,E,*,G,H,I,J,K,L,M,N,O,P], [A,B,C,D,E,J,G,H,I,*,K,L,M,N,O,P]).
baixo([A,B,C,D,E,F,*,H,I,J,K,L,M,N,O,P], [A,B,C,D,E,F,K,H,I,J,*,L,M,N,O,P]).
baixo([A,B,C,D,E,F,G,*,I,J,K,L,M,N,O,P], [A,B,C,D,E,F,G,L,I,J,K,*,M,N,O,P]).
baixo([A,B,C,D,E,F,G,H,*,J,K,L,M,N,O,P], [A,B,C,D,E,F,G,H,M,J,K,L,*,N,O,P]).
baixo([A,B,C,D,E,F,G,H,I,*,K,L,M,N,O,P], [A,B,C,D,E,F,G,H,I,N,K,L,M,*,O,P]).
baixo([A,B,C,D,E,F,G,H,I,J,*,L,M,N,O,P], [A,B,C,D,E,F,G,H,I,J,O,L,M,N,*,P]).
baixo([A,B,C,D,E,F,G,H,I,J,K,*,M,N,O,P], [A,B,C,D,E,F,G,H,I,J,K,P,M,N,O,*]).


% Predicados de movimento
% movimento(Posição1, Posição2, Movimento, Custo)
movimento(X, Y, esquerda, 1):- esquerda(X, Y).
movimento(X, Y, direita, 1):- direita(X, Y).
movimento(X, Y, cima, 1):- cima(X, Y).
movimento(X, Y, baixo, 1):- baixo(X, Y).


% Heurísticas
% - Número de peças fora do lugar

% Distância entre dois estados
numeroPecasForaLugar([], [], 0) :- !.
numeroPecasForaLugar([A|T1], [B|T2], N) :-
    dif(A, B), % A e B são diferentes
    dif(A, *), % exclui * ( posição vazia  )
    !,
    numeroPecasForaLugar(T1, T2, M), % número de peças foras do lugar para os subestados
    N is M + 1. % incrementa distância

numeroPecasForaLugar([_|T1], [_|T2], N) :- numeroPecasForaLugar(T1, T2, N). % não incrementa

% Chamada da função
% Necessário trocar a configuração inicial no código
% Consulta:
% ?-h1(D).
h1(Dist):- objetivo(Objetivo), numeroPecasForaLugar([3, 9, 1, 15, 14, 11, 4, 6, 13, *, 4, 10, 12, 2, 7, 8, 5], 
                                                    Objetivo, Dist).

% - Distância Manhattan
% Necessário trocar a configuração inicial na linha 96
% Consulta:
% ?-h2(D).
h2(DistManhattan):-
    [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P] = [3, 9, 1, 15, 14, 11, 4, 6, 13, *, 4, 10, 12, 2, 7, 8, 5],
	a(A, Da), b(B, Db), c(C, Dc), d(D, Dd),
    e(E, De), f(F, Df), g(G, Dg), h(H, Dh),
    i(I, Di), j(J, Dj), k(K, Dk), l(L, Dl),
    m(M, Dm), n(N, Dn), o(O, Do), p(P, Dp),
    DistManhattan is Da + Db + Dc + Dd + De + Df + Dg + Dh + Di + Dj + Dk + Dl + Dm + Dn + Do + Dp.


a(*, 6). a(1, 0). a(2, 1). a(3, 2). a(4, 3). a(5, 1). a(6, 2). a(7, 3). a(8, 5). a(9, 2). a(10, 3). a(11, 4). a(12, 5). a(13, 3). a(14, 4). a(15, 5).
b(*, 5). b(1, 1). b(2, 0). b(3, 1). b(4, 2). b(5, 2). b(6, 1). b(7, 2). b(8, 3). b(9, 3). b(10, 2). b(11, 3). b(12, 4). b(13, 4). b(14, 3). b(15, 4).
c(*, 4). c(1, 2). c(2, 1). c(3, 0). c(4, 1). c(5, 3). c(6, 2). c(7, 1). c(8, 2). c(9, 4). c(10, 3). c(11, 2). c(12, 3). c(13, 5). c(14, 4). c(15, 3).
d(*, 3). d(1, 3). d(2, 2). d(3, 1). d(4, 0). d(5, 4). d(6, 3). d(7, 2). d(8, 1). d(9, 5). d(10, 4). d(11, 3). d(12, 2). d(13, 6). d(14, 5). d(15, 4).
e(*, 5). e(1, 1). e(2, 2). e(3, 3). e(4, 4). e(5, 0). e(6, 1). e(7, 2). e(8, 3). e(9, 1). e(10, 2). e(11, 3). e(12, 4). e(13, 2). e(14, 3). e(15, 4).
f(*, 4). f(1, 2). f(2, 1). f(3, 2). f(4, 3). f(5, 1). f(6, 0). f(7, 1). f(8, 2). f(9, 2). f(10, 1). f(11, 2). f(12, 3). f(13, 3). f(14, 2). f(15, 3).
g(*, 3). g(1, 3). g(2, 2). g(3, 1). g(4, 2). g(5, 2). g(6, 1). g(7, 0). g(8, 1). g(9, 3). g(10, 2). g(11, 1). g(12, 2). g(13, 4). g(14, 3). g(15, 2).
h(*, 2). h(1, 4). h(2, 3). h(3, 2). h(4, 1). h(5, 3). h(6, 2). h(7, 1). h(8, 0). h(9, 4). h(10, 3). h(11, 2). h(12, 1). h(13, 5). h(14, 4). h(15, 3).
i(*, 4). i(1, 2). i(2, 3). i(3, 4). i(4, 5). i(5, 1). i(6, 2). i(7, 3). i(8, 4). i(9, 0). i(10, 1). i(11, 2). i(12, 3). i(13, 1). i(14, 2). i(15, 3).
j(*, 3). j(1, 3). j(2, 2). j(3, 3). j(4, 4). j(5, 2). j(6, 1). j(7, 2). j(8, 3). j(9, 1). j(10, 0). j(11, 1). j(12, 2). j(13, 2). j(14, 1). j(15, 2).
k(*, 2). k(1, 4). k(2, 3). k(3, 2). k(4, 3). k(5, 3). k(6, 2). k(7, 1). k(8, 2). k(9, 2). k(10, 1). k(11, 0). k(12, 1). k(13, 3). k(14, 2). k(15, 1).
l(*, 1). l(1, 5). l(2, 4). l(3, 3). l(4, 2). l(5, 4). l(6, 3). l(7, 2). l(8, 1). l(9, 3). l(10, 2). l(11, 1). l(12, 0). l(13, 4). l(14, 3). l(15, 2).
m(*, 3). m(1, 3). m(2, 4). m(3, 5). m(4, 6). m(5, 2). m(6, 3). m(7, 4). m(8, 5). m(9, 1). m(10, 2). m(11, 3). m(12, 4). m(13, 0). m(14, 1). m(15, 2).
n(*, 2). n(1, 4). n(2, 3). n(3, 4). n(4, 5). n(5, 3). n(6, 2). n(7, 3). n(8, 4). n(9, 2). n(10, 1). n(11, 2). n(12, 3). n(13, 1). n(14, 0). n(15, 1).
o(*, 1). o(1, 5). o(2, 4). o(3, 3). o(4, 4). o(5, 4). o(6, 3). o(7, 2). o(8, 3). o(9, 3). o(10, 2). o(11, 1). o(12, 2). o(13, 2). o(14, 1). o(15, 0).
p(*, 0). p(1, 6). p(2, 5). p(3, 4). p(4, 3). p(5, 5). p(6, 4). p(7, 3). p(8, 2). p(9, 4). p(10, 3). p(11, 2). p(12, 1). p(13, 3). p(14, 2). p(15, 1).



% Teste para saber se há caminho final ou não
% Caso haja, retorna true
% Caso não, retorna false
% 
% Consulta:
% ?-solucionavel.
% Necessário trocar as configurações iniciais nas linhas 131 e 140

solucionavel:-
    Estado = [15, 2, 1, 12, 8, 5, 6, 11, 4, 9, 10, 7, 3, 14, 13, *],
    posicao(Estado, Pos), 
    linha(Pos, Linha), % confere em que linha está * ( posição vazia  )
    par(Linha), % confere se essa linha é par
    !, % caso seja par, segue
    contaInversao(Estado, Res),
    impar(Res).

solucionavel:-
    Estado = [15, 2, 1, 12, 8, 5, 6, 11, 4, 9, 10, 7, 3, 14, 13, *],
    posicao(Estado, Pos),
    linha(Pos, Linha), % confere em que linha está * ( posição vazia  )
    impar(Linha), % confere se essa linha é ímpar
    !, contaInversao(Estado, Res),
    par(Res).
    
posicao([* | _], 1):- !.
posicao([_ | Tail], Pos):-
    posicao(Tail, Pos1),
    Pos is Pos1 + 1. 

linha(Pos, 1):-
    Pos =< 16,
    Pos >= 13, !.
linha(Pos, 2):-
    Pos =< 12,
    Pos >= 9, !.
linha(Pos, 3):-
    Pos =< 8,
    Pos >= 5, !.
linha(Pos, 4):-
    Pos =< 4,
    Pos >= 1.

par(Num):- Num mod 2 =:= 0, !.

impar(Num):- Num mod 2 =\= 0.

analisaDupla(Head, [* | Tail], Res) :-
    !, analisaDupla(Head, Tail, Res).
analisaDupla(_, [], 0).
analisaDupla(Head, [Head2 | Tail], Res) :-
    Head > Head2, !, 
    analisaDupla(Head, Tail, Res1),
    Res is Res1 + 1.

analisaDupla(Head, [Head2 | Tail], Res) :-
    Head < Head2,
    analisaDupla(Head, Tail, Res).

% Consulta:
% ?-contaInversao([13, 2, 10, 3, 1, 12, 8, 4, 5, *, 9, 6, 15, 14, 11, 7], R).
contaInversao([* | Tail_Est], Total) :-
    contaInversao(Tail_Est, Total).
contaInversao([], 0).
contaInversao([Head_Est | Tail_Est], Total) :-
    analisaDupla(Head_Est, Tail_Est, Res),
    contaInversao(Tail_Est, Total1),
    Total is Res + Total1, !.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Adiciona o nodo numa fila
addNodo(Nodo, [], [Nodo]) :- !.
addNodo(node(Estado1, Caminho1, Custo1), [node(Estado2, Caminho2, Custo2)|Lista], 
        [node(Estado1, Caminho1, Custo1),node(Estado2, Caminho2, Custo2)|Lista]):- Custo1 =< Custo2, !.
addNodo(node(Estado1, Caminho1, Custo1), [node(Estado2, Caminho2, Custo2)|Lista0], 
        [node(Estado2, Caminho2, Custo2)|Lista]) :-
    addNodo(node(Estado1, Caminho1, Custo1), Lista0, Lista).

% Adiciona uma lista de nodos na fila
addLista([], Lista, Lista).
addLista([Nodo|Resto], Lista0, Lista):- addNodo(Nodo, Lista0, Lista1), addLista(Resto, Lista1, Lista).

% Consulta: ?-soluciona(Caminho)
soluciona(Caminho) :-
    Estado = [13, 2, 10, 3, 1, 12, 8, 4, 5, 0, 9, 6, 15, 14, 11, 7],
    % h1(H),
    h2(H),
    aEstrela([node(Estado, [], H)], [Estado], Caminho).


% Algoritmo de busca A*
% Está sempre retornando false e não descobrimos à tempo o porquê
aEstrela([node(Objetivo, Caminho, _)|_], _, Caminho) :- objetivo(Objetivo).
aEstrela([node(Estado, Caminho, Custo)|Fila], Visitado, Solucao) :-
    findall(Vizinhos, movimento(Estado, Vizinhos, _, 1), EstadoVizinhos), % encontra estados vizinhos
    expandeFilhos(node(Estado, Caminho, Custo), EstadoVizinhos, Visitado, Filhos), % expande filhos
    addLista(Filhos, Fila, FilaOrdenados), % adiciona filho à lista
    aEstrela(FilaOrdenados, [Estado|Visitado], Solucao).

% Expande filhos do nodo
expandeFilhos(_, [], _, []) :- !. % nodo não possui filhos
expandeFilhos(node(Pai, Caminho, FPai), [Filho|Resto], Visitado,
        [node(Filho, [Filho|Caminho], F)|Filhos]) :-
    not(member(Filho, Visitado)), % estado nodo filho não foi visitado
    %length(Caminho, G1), h1(H), F is G1 + 1 + H, % f(nodo filho)
    length(Caminho, G1), h2(H), F is G1 + 1 + H, % f(nodo filho)
    expandeFilhos(node(Pai, Caminho, FPai), Resto, [Filho|Visitado], Filhos), !.
expandeFilhos(Nodo, [_|Resto], Visitado, Filhos) :- % nodo filho foi visitado
    expandeFilhos(Nodo, Resto, Visitado, Filhos). % tente outros filhos
