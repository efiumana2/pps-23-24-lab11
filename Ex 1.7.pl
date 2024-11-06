append([],X,[X]).
append([H|T],X,[H|T1]) :- append(T,X,T1).
rotate([],[]).
rotate([H|T],L) :- append(T,H,L).