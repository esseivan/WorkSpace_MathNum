% Ex 3
clear; clc; close all;

A = [4 -2 1;
    -2 1 -1;
    -2 3 6];
b = [-2, 1, 0]';

% Valeur calculee
x = [-3/4, -1/2, 0]';

% verification :
[L U P] = lu(A)
y = L\(P*b)
x_r = U\y

x - x_r < 1e-6

