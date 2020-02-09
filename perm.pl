%permutari

ins_all(L,E,[E|L]).
ins_all([H|T],E,[H|Rez]):-
    ins_all(T,E,Rez).

per([],[]).
per([H|T],Rez):-
    per(T,Rez1),
    ins_all(Rez1,H,Rez).

main1(L,Rez):-
    findall(X,per(L,X),Rez).

