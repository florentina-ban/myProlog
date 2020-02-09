
cand1(N,N).
cand1(N,X):-
    N>1,
    N1 is N-1,
    cand1(N1,X).

apare([H|_],H):-!.
apare([H|T],E):-
    E\=H,
    apare(T,E).

cand2([H|_],L,_,X):-
    X is H-1,
    X > 0,
    not(apare(L,X)).
cand2([H|_],L,N,X):-
    X is H+1,
    X =< N,
    not(apare(L,X)).
cand2([_|T],L,N,X):-
    cand2(T,L,N,X).

begin(N,Sol):-
    cand1(N,X),
    solution(N,Sol,[X],1).

ad_sf([],E,[E]).
ad_sf([H|T],E,[H|Rez]):-
    ad_sf(T,E,Rez).

solution(N,Col,Col,N).
solution(N,Out,Col,Lg):-
    Lg<N,
    cand2(Col,Col,N,X),
    ad_sf(Col,X,Col1),
    Lg1 is Lg+1,
    solution(N,Out,Col1,Lg1).



