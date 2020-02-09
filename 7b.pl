%all pairs from a list


p_aux([H|_],A,[A,H]):-
    A<H.
p_aux([_|T],A,Rez):-
    p_aux(T,A,Rez).

per([H|T],Rez):-
    p_aux(T,H,Rez).
per([_|T],Rez):-
    per(T,Rez).

mainf(L,Reza):-
    findall(Rez,per(L,Rez),Reza;).
