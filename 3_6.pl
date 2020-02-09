%generate N paranthesis that colose correctly

candidate('(').
candidate(')').

begin(N,S):-
    solution(N,S,['('],1,1).

ad_sf([],E,[E]).
ad_sf([H|T],E,[H|Rez]):-
    ad_sf(T,E,Rez).



solution(N,Out,Out,0,N).
solution(N,Out,Col,K,Lg):-
    Lg<N,
    candidate(X),
    aux(X,K,K1),
    K1>=0,
    Lg1 is Lg+1,
    ad_sf(Col,X,Col1),
    solution(N,Out,Col1,K1,Lg1).

aux(X,K,K1):-
    X='(',
    K1 is K+1.
aux(X,K,K1):-
    X=')',
    K1 is K-1.
