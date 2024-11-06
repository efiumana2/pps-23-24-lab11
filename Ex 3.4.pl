% Cancello prima tutti gli elementi che cominciano con N
%Poi cancello tutti gl elementi che hanno N al secondo posto
dropNode (G,N,OG):- dropAll (e(N,_),G, G2), dropAll (e(_,N),G2 ,OG).