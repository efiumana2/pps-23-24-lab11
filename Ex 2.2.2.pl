dropLast (X, [H | Xs], [H | L]) :- dropLast (X, Xs , L),!.
dropLast (X, [X | T], T).