sublist(X, Y):- append(X, _, Y).
sublist(X, [_|T]):- sublist(X, T).