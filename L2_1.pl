%sum of 2 numbers as lists

inv([],Col,Col).
inv([H|T],Col,Rez):-
    inv(T,[H|Col],Rez).

sum([],[],0,[]).
sum([],[],Tr,[Tr]):-
    Tr \= 0.
sum([H1|T1],[H2|T2],Tr,[X|Rez]):-
    X is (H1+H2+Tr) mod 10,
    Tr2 is (H1+H2+Tr) div 10,
    sum(T1,T2,Tr2,Rez).
sum([H|T],[],Tr,[X|Rez]):-
    X is (H+Tr) mod 10,
    Tr2 is (H+Tr) div 10,
    sum(T,[],Tr2,Rez).
sum([],[H|T],Tr,[X|Rez]):-
    X is (H+Tr) mod 10,
    Tr2 is (H+Tr) div 10,
    sum([],T,Tr2,Rez).

mainF(L1,L2,Rez):-
    inv(L1,[],A),
    inv(L2,[],B),
    sum(A,B,0,X),
    inv(X,[],Rez).;;
