%all sunsets

sub([],[]).
sub([_|T],X):-
    sub(T,X).
sub([H|T],[H|X]):-
    sub(T,X).

mainfunc(L,Rez):-
    findall(X,sub(L,X),Rez).

