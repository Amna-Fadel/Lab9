% =====================================
% Task 1 - A Boolean Expression
% (A AND B) OR (NOT A AND NOT B)
% =====================================

% AND Truth Table
and_gate(0, 0, 0).
and_gate(0, 1, 0).
and_gate(1, 0, 0).
and_gate(1, 1, 1).

% OR Truth Table
or_gate(0, 0, 0).
or_gate(0, 1, 1).
or_gate(1, 0, 1).
or_gate(1, 1, 1).

% NOT Truth Table
not_gate(0, 1).
not_gate(1, 0).

% Boolean Expression
boolean(A, B, Result) :-
    and_gate(A, B, X),
    not_gate(A, NA),
    not_gate(B, NB),
    and_gate(NA, NB, Y),
    or_gate(X, Y, Result).
