% Faits

homme(iglesias).
homme(ferdinand).

femme(beatrice).

parent(iglesias, adrien).
parent(beatrice, adrien).
parent(ferdinand, iglesias).

% Règles
parent(X, Y) :-
    pere(X, Y).

parent(X, Y) :-
    mere(X, Y).

pere(X, Y) :-
    parent(X, Y),
    homme(X).

mere(X, Y) :-
    parent(X, Y),
    femme(X).

grand_pere(X,Y) :-
    pere(X,Z),
    parent(Z,Y).

grand_mere(X,Y) :-
    mere(X,Z),
    parent(Z,Y).

ascendant(X, Y) :-
    parent(Y, X).
