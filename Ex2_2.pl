notInList(_, []).
notInList(E, [H|T]):- H \= E, notInList(E, T).

inList(X, [X|_]).
inList(X, [_|T]):- inList(X, T).

new_ele(E, Ele, [E|Ele]):- notInList(E, Ele).
new_ele(E, Ele, Ele):- inList(E, Ele).

distinct_ele([], EleCore, EleCore).
distinct_ele([H|T], EleCore, Ele):- new_ele(H, EleCore, NewEleCore), distinct_ele(T, NewEleCore, Ele).

check_3([], E, NewCount):- NewCount > 2, write(E). 
check_3([H|T], E, Count):- H = E, NewCount is Count + 1, check_3(T, E, NewCount).
check_3([H|T], E, Count):- H \= E, check_3(T, E, Count).

get_triplicates(X, [H|T]):- get_triplicates(X, T); check_3(X, H, 0). 

has_triplicate(X):- distinct_ele(X, [], Ele), get_triplicates(X, Ele).