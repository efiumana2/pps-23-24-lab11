firstToEnd([], []).
firstToEnd([H|T], [H|T1]) :- append(T, [H], T1).
% ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
% Appendo H a T e lo metto in T1
% Quindi l'out è una lista con H in testa e T1 in coda (dove ho messo H in coda)
%------------------------------------------------------------
fromList ([_] ,[]).
fromList ([H1 ,H2|T],[e(H1 ,H2)|L]):- fromList ([ H2|T],L).
fromCircList(Lin,Lout) :-
	firstToEnd(Lin,WorkList),
	fromList(WorkList,Lout).


