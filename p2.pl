%insert an element in a list on indexes: 1,2,4,8..
%int(list,int,int,int,list) (i,i,i,i,o)
ins([],_,_,_,[]).
ins(L,E,K,K,[E|Rez]):-
    I1 is K+1,
    K1 is 2*K,
    ins(L,E,I1,K1,Rez).
ins([H|T],E,I,K,[H|Rez]):-
    I\=K,
    I1 is I+1,
    ins(T,E,I1,K,Rez).
