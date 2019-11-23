remove_core([], Y, Y).
remove_core([H], Temp, Y):- append(Temp, [H], Y).
remove_core([H|[_|T]], Temp, Y):- append(Temp, [H], NewTemp), remove_core(T, NewTemp, Y).

remove_every_other(X, Y):- remove_core(X, [], Y).