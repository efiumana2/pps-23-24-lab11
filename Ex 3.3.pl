outDegree([],_,0).
outDegree([e(N,_)|T],N,X) :- outDegree(T,N,X1), X is X1 + 1.
outDegree([e(Y,_)|T],N,X) :- outDegree(T,N,X).