%combinations

comb([H|_],1,[H]).
comb([H|T],K,[H|X]):-
    K>1,
    K1 is K-1,
    comb(T,K1,X).
comb([_|T],K,X):-
    comb(T,K,X).

