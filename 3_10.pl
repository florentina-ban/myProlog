% get all subsets that have the sum divisible by N

candidate([H|_],H).
candidate([_|T],X):-
    candidate(T,X).

begin(L,N,Sol):-
    candidate(L,X),
    solution(L,N,Sol,[X],X).

solution(_,N,Col,Col,S):-
    S mod N =:=0.
solution(L,N,Out,[H|Col],S):-
    candidate(L,X),
    X<H,
    Col1 = [X,H|Col],
    S1 is S+X,
    solution(L,N,Out,Col1,S1).
