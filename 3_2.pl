%get a number N as a sum of prime distinct numbers
prim(1,_):-!.
prim(_,1):-!.
prim(N,D):-
    D>1,
    N mod D =\= 0,
    D1 is D-1,
    prim(N,D1).

candidate(N,X):-
    N>1,
    N1 is N-1,
    candidate(N1,X).
candidate(N,N).

begin(N,S):-
    candidate(N,X),
    X1 is X-1,
    prim(X,X1),
    solution(N,S,[X],X).

solution(N,Out,Out,N).
solution(N,Out,[H|Col],S):-
    S < N,
    N1 is N-S,
    candidate(N1,X),
    H>X,
    D is X-1,
    prim(X,D),
    S1 is S+X,
    S1 =< N,
    Col1 = [X,H|Col],
    solution(N,Out,Col1,S1).





