e([],[]).
e([e(X,Y)|T],[X,Y|L1]) :- e(T,L1).
rd([],[]). % https://staff.fnwi.uva.nl/u.endriss/teaching/prolog/prolog.pdf
rd([H|T],L) :- member(H,T), !, rd(T,L).
rd([H|T],[H|T1]) :-rd(T,T1).
%rd(Li,Lo) :- sort(Li,Lo).
nodes(Lin,Lout) :- e(Lin,Elem), rd(Elem,Lout).