dropAll(_,[],[]).
dropAll (X, [X | T], L):-!,dropAll(X,T,L).
dropAll (X, [H | Xs], [H | L]) :- dropAll (X, Xs , L).