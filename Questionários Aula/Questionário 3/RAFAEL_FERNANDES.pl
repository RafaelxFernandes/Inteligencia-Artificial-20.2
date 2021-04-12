fibo(1, 0).
fibo(2, 1).
fibo(X, N) :-
        X >= 1,
        X1 is (X - 1),
        X2 is (X - 2),
        fibo(X1, N1),
        fibo(X2, N2),
        N is (N1 + N2).