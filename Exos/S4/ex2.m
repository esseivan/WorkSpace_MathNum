% ex 2
clear; clc; close all;

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
L*U - A < 1e-6
% X calculé :
x = [22/3, 1/3, -33/9]';

% Verification par Matlab
% Par methode lu
[Lr Ur] = lu(A)
L-Lr < 1e-6
U-Ur < 1e-6
y_r = L\b
x_r = U\y_r
x-x_r < 1e-6

% Par methode \
x_r2 = A\b
x-x_r2 < 1e-6
