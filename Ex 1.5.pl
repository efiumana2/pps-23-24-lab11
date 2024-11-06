max(X,Y,X) :- X > Y.
max(X,Y,Y) :- Y >= X.
min(X,Y,Y) :- X > Y.
min(X,Y,X) :- Y >= X.
maxL([A],A).
maxL([H|T],X) :- maxL(T,Y), max(H,Y,X).
minL([A],A).
minL([H|T],X) :- minL(T,Y), min(H,Y,X).
min-max(List,Min,Max) :- minL(List,Min), maxL(List,Max).
