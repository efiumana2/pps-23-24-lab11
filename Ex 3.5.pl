reaching(G,N,L) :- findall(Y,member(e(N,Y),G),L).