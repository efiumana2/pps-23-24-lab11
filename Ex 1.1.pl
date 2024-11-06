search2(A,[A,A|_]).
search2(A,[_|T]) :- search2(A,T).