objetivo(1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/0).


% Movimentos
% - Esquerda
esquerda(A/0/C/D/E/F/G/H/I/J/K/L/M/N/O/P, 0/A/C/D/E/F/G/H/I/J/K/L/M/N/O/P).
esquerda(A/B/0/D/E/F/G/H/I/J/K/L/M/N/O/P, A/0/B/D/E/F/G/H/I/J/K/L/M/N/O/P).
esquerda(A/B/C/0/E/F/G/H/I/J/K/L/M/N/O/P, A/B/0/C/E/F/G/H/I/J/K/L/M/N/O/P).
esquerda(A/B/C/D/E/0/G/H/I/J/K/L/M/N/O/P, A/B/C/D/0/E/G/H/I/J/K/L/M/N/O/P).
esquerda(A/B/C/D/E/F/0/H/I/J/K/L/M/N/O/P, A/B/C/D/E/0/F/H/I/J/K/L/M/N/O/P).
esquerda(A/B/C/D/E/F/G/0/I/J/K/L/M/N/O/P, A/B/C/D/E/F/0/G/I/J/K/L/M/N/O/P).
esquerda(A/B/C/D/E/F/G/H/I/0/K/L/M/N/O/P, A/B/C/D/E/F/G/H/0/I/K/L/M/N/O/P).
esquerda(A/B/C/D/E/F/G/H/I/J/0/L/M/N/O/P, A/B/C/D/E/F/G/H/I/0/J/L/M/N/O/P).
esquerda(A/B/C/D/E/F/G/H/I/J/K/0/M/N/O/P, A/B/C/D/E/F/G/H/I/J/0/K/M/N/O/P).
esquerda(A/B/C/D/E/F/G/H/I/J/K/L/M/0/O/P, A/B/C/D/E/F/G/H/I/J/K/L/0/M/O/P).
esquerda(A/B/C/D/E/F/G/H/I/J/K/L/M/N/0/P, A/B/C/D/E/F/G/H/I/J/K/L/M/0/N/P). 

% - Direita
direita(0/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P, B/0/C/D/E/F/G/H/I/J/K/L/M/N/O/P).
direita(A/0/C/D/E/F/G/H/I/J/K/L/M/N/O/P, A/C/0/D/E/F/G/H/I/J/K/L/M/N/O/P).
direita(A/B/0/D/E/F/G/H/I/J/K/L/M/N/O/P, A/B/D/0/E/F/G/H/I/J/K/L/M/N/O/P).
direita(A/B/C/D/0/F/G/H/I/J/K/L/M/N/O/P, A/B/C/D/F/0/G/H/I/J/K/L/M/N/O/P).
direita(A/B/C/D/E/0/G/H/I/J/K/L/M/N/O/P, A/B/C/D/E/G/0/H/I/J/K/L/M/N/O/P).
direita(A/B/C/D/E/F/0/H/I/J/K/L/M/N/O/P, A/B/C/D/E/F/H/0/I/J/K/L/M/N/O/P).
direita(A/B/C/D/E/F/G/H/0/J/K/L/M/N/O/P, A/B/C/D/E/F/G/H/J/0/K/L/M/N/O/P).
direita(A/B/C/D/E/F/G/H/I/0/K/L/M/N/O/P, A/B/C/D/E/F/G/H/I/K/0/L/M/N/O/P).
direita(A/B/C/D/E/F/G/H/I/J/0/L/M/N/O/P, A/B/C/D/E/F/G/H/I/J/L/0/M/N/O/P).
direita(A/B/C/D/E/F/G/H/I/J/K/L/0/N/O/P, A/B/C/D/E/F/G/H/I/J/K/L/N/0/O/P).
direita(A/B/C/D/E/F/G/H/I/J/K/L/M/0/O/P, A/B/C/D/E/F/G/H/I/J/K/L/M/O/0/P).
direita(A/B/C/D/E/F/G/H/I/J/K/L/M/N/0/P, A/B/C/D/E/F/G/H/I/J/K/L/M/N/P/0).

% - Cima
cima(A/B/C/D/0/F/G/H/I/J/K/L/M/N/O/P, 0/B/C/D/A/F/G/H/I/J/K/L/M/N/O/P).
cima(A/B/C/D/E/0/G/H/I/J/K/L/M/N/O/P, A/0/C/D/E/B/G/H/I/J/K/L/M/N/O/P).
cima(A/B/C/D/E/F/0/H/I/J/K/L/M/N/O/P, A/B/0/D/E/F/C/H/I/J/K/L/M/N/O/P).
cima(A/B/C/D/E/F/G/0/I/J/K/L/M/N/O/P, A/B/C/0/E/F/G/D/I/J/K/L/M/N/O/P).
cima(A/B/C/D/E/F/G/H/0/J/K/L/M/N/O/P, A/B/C/D/0/F/G/H/E/J/K/L/M/N/O/P).
cima(A/B/C/D/E/F/G/H/I/0/K/L/M/N/O/P, A/B/C/D/E/0/G/H/I/F/K/L/M/N/O/P).
cima(A/B/C/D/E/F/G/H/I/J/0/L/M/N/O/P, A/B/C/D/E/F/0/H/I/J/G/L/M/N/O/P).
cima(A/B/C/D/E/F/G/H/I/J/K/0/M/N/O/P, A/B/C/D/E/F/G/0/I/J/K/H/M/N/O/P).
cima(A/B/C/D/E/F/G/H/I/J/K/L/0/N/O/P, A/B/C/D/E/F/G/H/0/J/K/L/I/N/O/P).
cima(A/B/C/D/E/F/G/H/I/J/K/L/M/0/O/P, A/B/C/D/E/F/G/H/I/0/K/L/M/J/O/P).
cima(A/B/C/D/E/F/G/H/I/J/K/L/M/N/0/P, A/B/C/D/E/F/G/H/I/J/0/L/M/N/K/P).
cima(A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/0, A/B/C/D/E/F/G/H/I/J/K/0/M/N/O/L).

% - Baixo
baixo(0/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P, E/B/C/D/0/F/G/H/I/J/K/L/M/N/O/P).
baixo(A/0/C/D/E/F/G/H/I/J/K/L/M/N/O/P, A/F/C/D/E/0/G/H/I/J/K/L/M/N/O/P).
baixo(A/B/0/D/E/F/G/H/I/J/K/L/M/N/O/P, A/B/G/D/E/F/0/H/I/J/K/L/M/N/O/P).
baixo(A/B/C/0/E/F/G/H/I/J/K/L/M/N/O/P, A/B/C/H/E/F/G/0/I/J/K/L/M/N/O/P).
baixo(A/B/C/D/0/F/G/H/I/J/K/L/M/N/O/P, A/B/C/D/I/F/G/H/0/J/K/L/M/N/O/P).
baixo(A/B/C/D/E/0/G/H/I/J/K/L/M/N/O/P, A/B/C/D/E/J/G/H/I/0/K/L/M/N/O/P).
baixo(A/B/C/D/E/F/0/H/I/J/K/L/M/N/O/P, A/B/C/D/E/F/K/H/I/J/0/L/M/N/O/P).
baixo(A/B/C/D/E/F/G/0/I/J/K/L/M/N/O/P, A/B/C/D/E/F/G/L/I/J/K/0/M/N/O/P).
baixo(A/B/C/D/E/F/G/H/0/J/K/L/M/N/O/P, A/B/C/D/E/F/G/H/M/J/K/L/0/N/O/P).
baixo(A/B/C/D/E/F/G/H/I/0/K/L/M/N/O/P, A/B/C/D/E/F/G/H/I/N/K/L/M/0/O/P).
baixo(A/B/C/D/E/F/G/H/I/J/0/L/M/N/O/P, A/B/C/D/E/F/G/H/I/J/O/L/M/N/0/P).
baixo(A/B/C/D/E/F/G/H/I/J/K/0/M/N/O/P, A/B/C/D/E/F/G/H/I/J/K/P/M/N/O/0).


% Predicados de movimento
movimento(X, Y, esquerda, 1):- esquerda(X, Y).
movimento(X, Y, direita, 1):- direita(X, Y).
movimento(X, Y, cima, 1):- cima(X, Y).
movimento(X, Y, baixo, 1):- baixo(X, Y).


% Heurísticas
% - Número de peças fora do lugar


% - Distância Manhattan
h2(A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P, DistManhattan):-
	a(A, Da), b(B, Db), c(C, Dc), d(D, Dd),
    e(E, De), f(F, Df), g(G, Dg), h(H, Dh),
    i(I, Di), j(J, Dj), k(K, Dk), l(L, Dl),
    m(M, Dm), n(N, Dn), o(O, Do), p(P, Dp),
    DistManhattan is Da + Db + Dc + Dd + De + Df + Dg + Dh + Di + Dj + Dk + Dl + Dm + Dn + Do + Dp.


a(0, 6). a(1, 0). a(2, 1). a(3, 2). a(4, 3). a(5, 1). a(6, 2). a(7, 3). a(8, 5). a(9, 2). a(10, 3). a(11, 4). a(12, 5). a(13, 3). a(14, 4). a(15, 5).
b(0, 5). b(1, 1). b(2, 0). b(3, 1). b(4, 2). b(5, 2). b(6, 1). b(7, 2). b(8, 3). b(9, 3). b(10, 2). b(11, 3). b(12, 4). b(13, 4). b(14, 3). b(15, 4).
c(0, 4). c(1, 2). c(2, 1). c(3, 0). c(4, 1). c(5, 3). c(6, 2). c(7, 1). c(8, 2). c(9, 4). c(10, 3). c(11, 2). c(12, 3). c(13, 5). c(14, 4). c(15, 3).
d(0, 3). d(1, 3). d(2, 2). d(3, 1). d(4, 0). d(5, 4). d(6, 3). d(7, 2). d(8, 1). d(9, 5). d(10, 4). d(11, 3). d(12, 2). d(13, 6). d(14, 5). d(15, 4).
e(0, 5). e(1, 1). e(2, 2). e(3, 3). e(4, 4). e(5, 0). e(6, 1). e(7, 2). e(8, 3). e(9, 1). e(10, 2). e(11, 3). e(12, 4). e(13, 2). e(14, 3). e(15, 4).
f(0, 4). f(1, 2). f(2, 1). f(3, 2). f(4, 3). f(5, 1). f(6, 0). f(7, 1). f(8, 2). f(9, 2). f(10, 1). f(11, 2). f(12, 3). f(13, 3). f(14, 2). f(15, 3).
g(0, 3). g(1, 3). g(2, 2). g(3, 1). g(4, 2). g(5, 2). g(6, 1). g(7, 0). g(8, 1). g(9, 3). g(10, 2). g(11, 1). g(12, 2). g(13, 4). g(14, 3). g(15, 2).
h(0, 2). h(1, 4). h(2, 3). h(3, 2). h(4, 1). h(5, 3). h(6, 2). h(7, 1). h(8, 0). h(9, 4). h(10, 3). h(11, 2). h(12, 1). h(13, 5). h(14, 4). h(15, 3).
i(0, 4). i(1, 2). i(2, 3). i(3, 4). i(4, 5). i(5, 1). i(6, 2). i(7, 3). i(8, 4). i(9, 0). i(10, 1). i(11, 2). i(12, 3). i(13, 1). i(14, 2). i(15, 3).
j(0, 3). j(1, 3). j(2, 2). j(3, 3). j(4, 4). j(5, 2). j(6, 1). j(7, 2). j(8, 3). j(9, 1). j(10, 0). j(11, 1). j(12, 2). j(13, 2). j(14, 1). j(15, 2).
k(0, 2). k(1, 4). k(2, 3). k(3, 2). k(4, 3). k(5, 3). k(6, 2). k(7, 1). k(8, 2). k(9, 2). k(10, 1). k(11, 0). k(12, 1). k(13, 3). k(14, 2). k(15, 1).
l(0, 1). l(1, 5). l(2, 4). l(3, 3). l(4, 2). l(5, 4). l(6, 3). l(7, 2). l(8, 1). l(9, 3). l(10, 2). l(11, 1). l(12, 0). l(13, 4). l(14, 3). l(15, 2).
m(0, 3). m(1, 3). m(2, 4). m(3, 5). m(4, 6). m(5, 2). m(6, 3). m(7, 4). m(8, 5). m(9, 1). m(10, 2). m(11, 3). m(12, 4). m(13, 0). m(14, 1). m(15, 2).
n(0, 2). n(1, 4). n(2, 3). n(3, 4). n(4, 5). n(5, 3). n(6, 2). n(7, 3). n(8, 4). n(9, 2). n(10, 1). n(11, 2). n(12, 3). n(13, 1). n(14, 0). n(15, 1).
o(0, 1). o(1, 5). o(2, 4). o(3, 3). o(4, 4). o(5, 4). o(6, 3). o(7, 2). o(8, 3). o(9, 3). o(10, 2). o(11, 1). o(12, 2). o(13, 2). o(14, 1). o(15, 0).
p(0, 0). p(1, 6). p(2, 5). p(3, 4). p(4, 3). p(5, 5). p(6, 4). p(7, 3). p(8, 2). p(9, 4). p(10, 3). p(11, 2). p(12, 1). p(13, 3). p(14, 2). p(15, 1).





% A*
% Qual heurística a ser utilizada deve ser passada como parâmetro
% Configuração inicial não deve ser passada como parâmetro
% Configuração inicial do enunciado: 15/2/1/12/8/5/6/11/4/9/10/7/3/14/13/0

%nodo(Estado, Pai, Movimento, Custo).

% Se objetivo for EstadoAtual := true
aEstrela([NodoAtual | _], _, Movimentos):-
    NodoAtual = nodo(EstadoAtual, _, _, _),
    objetivo(EstadoAtual),
    extrairMovimentos(NodoAtual, Movimentos), !.

aEstrela([NodoAtual | RestoAberto], Fechados, Movimentos):-
    NodoAtual = nodo(EstadoAtual, _, _, _),
    gerarSucessores(NodoAtual, [EstadoAtual | RestoAberto], NodosSucessores),
    inserirSucessores(NodosSucessores, RestoAberto, NovosAbertos),
    aEstrela(NovosAbertos, [EstadoAtual | Fechados], Movimentos).


inserirSucessores([], Abertos, Abertos).
inserirSucessores([CabecaSucessor | RestoSucessor], AbertosOrganizados, AbertosFinal):-
    inserir(CabecaSucessor, AbertosOrganizados, AbertosTransformados),
    inserirSucessores(RestoSucessor, AbertosTransformados, AbertosFinal).

inserir(Nodo, Aberto, Aberto):-
    nodoRepetido(Nodo, Aberto), !.

inserir(Nodo, [Cabeca | Cauda], [Nodo, Cabeca | Cauda]):-
    maisBarato(Nodo, Cabeca), !.

inserir(Nodo, [Nodo1 | R], [Nodo1 | S]):- inserir(Nodo, R, S), !.

inserir(Nodo, [], Nodo).


nodoRepetido(NodoA, [NodoB | _]):- 
    NodoA = nodo(Estado, _, _, _),
    NodoB = nodo(Estado, _, _, _).
    

maisBarato(NodoA, NodoB):-
    fn(NodoA, FnA),
    fn(NodoB, FnB),
    FnA < FnB.

gerarSucessores(NodoAtual, Fechados, NodosSucessores):-
    NodoAtual = nodo(EstadoAtual, _, _, CustoPai),
    findall(nodo(EstadoSucessor, NodoAtual, Movimento, CustoSucessor), 
            (movimento(EstadoAtual, Movimento, EstadoSucessor, CustoMovimento),
            not(member(EstadoSucessor, Fechados)),
            CustoSucessor is CustoPai + CustoMovimento),
            NodosSucessores).


extrairMovimentos(nodo(_, none, _, _), []).
extrairMovimentos(nodo(_, Pai, Movimento, _), [Movimento | Movimentos]):-
    extrairMovimentos(Pai, Movimentos).
    


soluciona(EstadoInicial):-
    aEstrela([nodo(EstadoInicial, none, 0, 0)], [], Movimentos),
    reverse(Movimentos, MovimentosOrdenados),
    writeln('Solucao: ' + MovimentosOrdenados).


fn(NodoAtual, Fn):-
    NodoAtual = nodo(EstadoAtual, _, _, Gn),
    h2(EstadoAtual, Hn),
    Fn is Gn + Hn.




% Teste para saber se há caminho final ou não
% Caso haja:
% - apresentar a sequência de movimentos necessários
% - número total de nós gerados na busca

% Caso não: mensagem informando tal





