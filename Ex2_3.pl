rem_n_core(N, X, X, Y, Y, Count):- Count > N - 2.
rem_n_core(N, [H|T], XX, Y, YY, Count):- Count < N - 1, NewCount is Count + 1, rem_n_core(N, T, XX, [H|Y], YY, NewCount).

after_n(X, YYRev, Y):- reverse(YYRev, YY), append(YY, X, Y).

remove_nth(N, X, Y):- rem_n_core(N, X, [_|T], [], YY, 0), after_n(T, YY, Y). 