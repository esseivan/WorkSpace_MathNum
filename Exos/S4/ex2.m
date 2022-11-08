% ex 2

A = [2 -1 2;
    1 6 -1;
    1 4 1];
b = [7 13 5]';

% L et U calcule a la main
L = [1 0 0;
    0.5 1 0;
    0.5 9/13 1]
U = [2 -1 2;
    0 13/2 -2;
    0 0 18/13]
% Verif : A=LU
L*U
% Resolution
y = L\b

...
