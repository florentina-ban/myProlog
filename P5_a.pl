%substitude one element with a list

%method 1:

sub([],_,_,[]).
sub([H|T],H,L,[L|Rez]):-
    sub(T,H,L,Rez).
sub([H|T],E,L,[H|Rez]):-
    H\=E,
    sub(T,E,L,Rez).

%method 2:

add_end([],[],[]).
add_end([],[H|T],[H|Rez]):-
    add_end([],T,Rez).
add_end([H|T],P,[H|Rez]):-
    add_end(T,P,Rez).

sub2([],_,_,_,[]).
sub2([E|T],E,L,[Ph|Pt],[Ph|Rez]):-
    sub2([E|T],E,L,Pt,Rez).
sub2([E|T],E,L,[],Rez):-
    sub2(T,E,L,L,Rez).

sub2([H|T],E,L,L,[H|Rez]):-
    E\=H,
    sub2(T,E,L,L,Rez).

