search_two(A,[A,_,A|_]).
search_two(A,[_|X]) :- search_two(A,X).