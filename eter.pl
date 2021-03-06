


sterge([],[]).
sterge([H|T],Rez):-
    H mod 2 =:=0,
    sterge(T,Rez).
sterge([H|T],[H|Rez]):-
    H mod 2 =:= 1,
    sterge(T,Rez).

el([],[]).
el([H|T],[H|Rez]):-
    number(H),
    el(T,Rez).
el([H|T],Rez):-
    is_list(H),
    sterge(H,R2),
    el(T,R3),
    Rez = [R2|R3].
