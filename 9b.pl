%list of all numbers between A and B

int(A,B,A):-
    A =< B.
int(A,B,X):-
    A1 is A+1,
    A1=<B,
    int(A1,B,X).

mainf(A,B,X):-
    findall(Rez,int(A,B,Rez),X).


