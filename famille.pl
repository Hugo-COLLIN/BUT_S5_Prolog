% Faits
homme(iglesias).
homme(ferdinand).
femme(beatrice).
parent(iglesias, adrien).
parent(beatrice, adrien).
parent(ferdinand, iglesias).

% Règles
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

grand_parent(X, Y) :-
    grand_mere(X, Y),
    grand_pere(X, Y).

oncle_tante(X, Y) :-
    parent(Z, Y),
    frere_soeur(X, Z).

frere_soeur(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

frere(X, Y) :-
    frere_soeur(X, Y),
    homme(X).

soeur(X, Y) :-
    frere_soeur(X, Y),
    femme(X).

cousin_e(X, Y) :-
    parent(Z, X),
    parent(W, Y),
    frere_soeur(Z, W).

cousin(X, Y) :-
    cousin_cousine(X, Y),
    homme(X).

cousine(X, Y) :-
    cousin_cousine(X, Y),
    femme(X).