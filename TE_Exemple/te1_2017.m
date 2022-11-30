

%% 2

f = @(x) x^3+8*x^2-50*sin(x);

ezplot(f, [-12, 5]); yline(0, 'k--');

x1 = fzero(f, -5)
x1 = fzero(f, 0)
x2 = fzero(f, 2)

%% 3
clear;clc;

A = [2 -3 4; 6 2 1; -3 3 -5];
b = [-4 -1 3]';

[L U P] = lu(A)

% PAx = PB => LUx=PB => Ux=y => Ly=PB
y = L\(P*b)
x = U\y

%% 4
clc; clear;
res = question4(50, 5)
% Résidu, pas exactement 0
% Lors de l'addition itérée, les erreurs d'arrondis s'accumulent
