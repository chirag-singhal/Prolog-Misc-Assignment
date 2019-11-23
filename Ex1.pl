% weight(p, q, 50).
% weight(q, r, 20).

notInPath(_, []).
notInPath(Z, [H|Path]):- H \= Z, notInPath(Z, Path).

findPathCore(X, X, PathCore, LCore, [X|PathCore], LCore).
findPathCore(X, Y, PathCore, LCore, Path, L):- (weight(X, Z, LL); weight(Z, X, LL)), notInPath(Z, PathCore), LLCore is LCore + LL, findPathCore(Z, Y, [X|PathCore], LLCore, Path, L).

findPath(X, Y, Path, L):- findPathCore(X, Y, [], 0, PathRev, L), reverse(PathRev, Path).