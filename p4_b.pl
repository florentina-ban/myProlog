%odds and evens
%od_ev(init_list,col_list,nr_od,nr_ev,final_list)
%(i,i,o,o,o)

fun([],P,I,0,0,[P,I]).
fun([H|T],P,I,Pa,Im,Rez):-
    H mod 2 =:=0,
    fun(T,[H|P],I,Pa2,Im,Rez),
    Pa is Pa2+1.
fun([H|T],P,I,Pa,Im,Rez):-
    H mod 2 =:= 1,
    fun(T,P,[H|I],Pa,Im2,Rez),
    Im is Im2+1.
