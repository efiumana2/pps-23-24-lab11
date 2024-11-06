split([],_,[],[]). 
split(L,0,[],L).
split([H|T],X,[H|T2],L2) :- X > 0, X1 is X - 1, split(T,X1,T2,L2).