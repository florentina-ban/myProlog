% frequency of elements

f([],_,0).
f([H|T],H,A):-!,
    f(T,H,A1),
    A is A1+1.
f([H|T],E,A):-
    E\=H,
    f(T,E,A).


rem([],_,[]).
rem([H|T],H,Rez):-!,
    rem(T,H,Rez).
rem([H|T],E,[H|Rez]):-
    H\=E,
    rem(T,E,Rez).

main([],[]).
main([H|T],Rez):-
    f([H|T],H,Fr),
    rem([H|T],H,Rest),
    main(Rest,Rez1),
    Rez=[[H,Fr]|Rez1].

%remove all elements that appear more than once

rem1([],_,[]).
rem1([H|T],L,[H|Rez]):-
    f(L,H,Fr),
    Fr =:= 1,
    rem1(T,L,Rez).
rem1([H|T],L,Rez):-
    f(L,H,Fr),
    Fr =\= 1,
    rem(T,H,Rest),
    rem1(Rest,L,Rez).

%remove maximum element from a list

%get maximum
max([],M,M).
max([H|T],M,Rez):-
    H > M,
    max(T,H,Rez).
max([H|T],M,Rez):-
    H =< M,
    max(T,M,Rez).

apel_max([H|T],Rez):-
    max(T,H,Rez).

mainF(L,Rez):-
    apel_max(L,M),
    rem(L,M,Rez).





