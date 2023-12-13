appartient_a(X, mrs_bond) :-
    canard(X),
    vit_dans(X, ce_village),
    marque_avec(X, "B").

appartient_a(X, mrs_bond) :-
    canard(X),
    vit_dans(X, ce_village),
    porte_col_dentelle(X).
pas_gris(X) :-
    canard(X),
    vit_dans(X, ce_village),
    appartient_a(X, mrs_bond).

canard(george).
vit_dans(george, ce_village).
marque_avec(george, "AB").
porte_col_dentelle(george).
canard(augusta).
vit_dans(augusta, ce_village).
marque_avec(augusta, "B").
