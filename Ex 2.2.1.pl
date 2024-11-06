dropFirst (X, [X | T], T):-!.
dropFirst (X, [H | Xs], [H | L]) :- dropFirst (X, Xs , L).