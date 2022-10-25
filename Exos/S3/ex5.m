% Ex 5
% Voir solve_method_ex5
clear;clc;close all;

tol = 1e-5;

% Visualisation des fonctions pour égales à 0
f = @(x, y) x^2 + y^2 - 4;
g = @(x, y) x^2 - y^2 - 1;
ezplot(f); hold on; ezplot(g);

% On peut visualiser 4 solutions symétriques x et y

clc;
% fsolve
F1 = fsolve(@solve_method_ex5, [1 1])
F = F1; verif = solve_method_ex5(F) < tol
plot(F(1), F(2), 'ro');

F2 = [-F1(1) F1(2)]
F = F2; verif = solve_method_ex5(F) < tol
plot(F(1), F(2), 'ro');

% Pas utile comme les solutions sont symétriques
% % 2e pour les autres solutions
% F3 = fsolve(@solve_method_ex5, [-1 1])
% F = F3; verif = solve_method_ex5(F) < tol
% plot(F(1), F(2), 'ro');
% 
% F4 = -F3;
% F = F4; verif = solve_method_ex5(F) < tol
% plot(F(1), F(2), 'ro');

F3 = -F1;
F = F3; verif = solve_method_ex5(F) < tol
plot(F(1), F(2), 'ro');

F4 = -F2;
F = F4; verif = solve_method_ex5(F) < tol
plot(F(1), F(2), 'ro');

S = [F1; F2; F3; F4]

