% Ex4

format long
a = 4/3
b = a - 1
c = 3*b
e = 1 - c
% c devrait être 1, donc e 0
% Or, e est 2.22E-16 et non 0.
% Ce problème est dû à une erreur d'arrondi lors d'opérations

% On aurait du faire de cette facon :
c = (3*4/3 - 3*1)
e = 1 - c
