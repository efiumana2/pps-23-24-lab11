anyp(Li,N1,N2,[e(N1,N2)])  :- member(e(N1,N2),Li).
anyp(Li,N1,N2,[e(N1,X)|T]) :- member(e(N1,X),Li),anyp(Li,X,N2,T).
allreaching(Li,N,Lo) :- findall(X,anyp(Li,N,X,LL),Lo).