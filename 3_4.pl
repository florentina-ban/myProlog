%arrange numbers between 1 and N in every way possible
% to keep the difference between 2 adjacent numbers
% (as abosule value) greater than M


apare([H|_],H).
apare([H|T],E):-
    H\=E,
    apare(T,E).

candidate(N,N):-
    N >= 1.
candidate(N,X):-
    N > 1,
    N1 is N-1,
    candidate(N1,X).

begin(N,M,S):-
    candidate(N,X),
    solution(N,M,S,[X],1).

solution(N,_,Out,Out,K):-
    K=N.
solution(N,M,Out,[H|Col],K):-
    candidate(N,X),
    abs(H-X) >= M,
    not(apare([H|Col],X)),
    Col1=[X,H|Col],
    K < N,
    K1 is K+1,
    solution(N,M,Out,Col1,K1).

mainf(N,M,X):-
    findall(S,begin(N,M,S),X).





