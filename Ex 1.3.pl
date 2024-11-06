size([],0).
size([_|L],X) :- size(L,S), X is S + 1.
% No, it isn't fully relational