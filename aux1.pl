% modif ca sa nu mai fie aper repetat!
f([E],E).
f([H|T],Y):- f(T,X),
 H=<X,
 !,
 Y=H.
f([_|T],X):- f(T,X).

% var modificata

aux(H,X,Y):-
    H=<X,
    !,
    Y = H.
aux(_,X,X).


f1([E],E).
f1([H|T],Y):- f1(T,X),
    aux(H,X,Y).

% ex 2: var 1:

f2(1,1):-!.
f2(2,2):-!.
f2(K,X):- K1 is K-1,
 f2(K1, Y),
 Y>1,
 !,
 K2 is K-2,
 X=K2.
f2(K,X):- K1 is K-1,
 f2(K1, X).

aux2(Y,K,X):-
    Y>1,
    !,
    K2 is K-2,
    X=K2.
aux2(Y,_,Y).

f3(1,1):-!.
f3(2,2):-!.
f3(K,X):- K1 is K-1,
 f3(K1,Y),
 aux2(Y,K,X).





