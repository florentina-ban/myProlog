%aranjamente


candidate([H|_],H).
candidate([_|T],X):-
    candidate(T,X).

ad(L,E,[E|L]).
ad([H|T],E,[H|X]):-
    ad(T,E,X).


ar([H|_],1,[H]).
ar([H|T],K,Rez):-
    K > 1,
    K1 is K-1,
    ar(T,K1,X),
    ad(X,H,Rez).
ar([_|T],K,X):-
    comb(T,K,X).
