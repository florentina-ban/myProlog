%pronosport

candidate(1,_).
candidate(2,N):-
    N>1.
candidate(x,_).

begin(Out):-
    candidate(X,1),
    X = x,
    solution(Out,[X],1,1).
begin(Out):-
    candidate(X,1),
    X \= x,
    solution(Out,[X],1,0).

solution(Col,Col,4,Nr):-
    Nr =<2.
solution(Out,Col,N,NrX):-
    N<4,
    NrX=<2,
    N1 is N+1,
    candidate(C,N1),
    C=x,
    NrX1 is NrX+1,
    Col1 = [C|Col],
    solution(Out, Col1,N1,NrX1).

solution(Out,Col,N,NrX):-
    N<4,
    NrX=<2,
    N1 is N+1,
    candidate(C,N1),
    C\=x,
    Col1 = [C|Col],
    N1 is N+1,
    solution(Out, Col1,N1,NrX).










