% all crescending sublists

candidat([H|_],H).
candidat([_|T],X):-
    candidat(T,X).

apare([H|_],H).
apare([H|T],X):-
    X \= H,
    apare(T,X).

sub(L,S):-
    candidat(L,C),
    solutie(L,S,[C],1).


solutie(_,Col,Col, K):-
    K>=2.
solutie(Linit,S,[H|Col],K):-
    candidat(Linit,C),
    C<H,
    \+ apare([H|Col],C),
    K1 is K+1,
    Col1 = [C,H|Col],
    solutie(Linit,S,Col1,K1).

mainf(L,S):-
    findall(X,%sub(L,X),S).
