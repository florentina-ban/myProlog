ins(L,E,[E|L]).
ins([H|T],E,[H|Rez]):-
    ins(T,E,Rez).

sub([],[]).
sub([H|T],Rez):-
    sub(T,R1),
    ins(R1,H,Rez).


comb([H|_],1,[H]).
comb([H|T],K,[H|Rez]):-
    K>1,
    K1 is K-1,
    comb(T,K1,Rez).
comb([_|T],K,Rez):-
    comb(T,K,Rez).



ar([H|_],1,[H]).
ar([H|T],K,Rez):-
    K>1,
    K1 is K-1,
    ar(T,K1,R1),
    ins(R1,H,Rez).
ar([_|T],K,Rez):-
    ar(T,K,Rez).


