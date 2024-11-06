interval (A, B, A).
interval (A, B, X):- A2 is A+1, A2 < B, interval (A2 , B, X).

neighbour (A, B, A, B2):- B2 is B +1.
neighbour (A, B, A, B2):- B2 is B -1.
neighbour (A, B, A2 , B):- A2 is A +1.
neighbour (A, B, A2 , B):- A2 is A -1.

gridlink (N, M, e((X, Y), (X2 , Y2))):-
 interval (0, N, X),
 interval (0, M, Y),
 neighbour (X, Y, X2 , Y2),
 X2 >= 0, Y2 >= 0, X2 < N, Y2 < M.

pp(A,B,Lout) :- findall(L,gridlink(A,B,L),Lout).