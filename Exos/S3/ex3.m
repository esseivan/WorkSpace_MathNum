% Ex 3
clear;clc;close all;

f = @(x) 1/2 * x * exp(x) - 2 * x^2;
fp = @(x) 1/2*exp(x) + 1/2*x*exp(x) - 4*x; % premire derivee
% Affichage de la fonction
ezplot(f);
yline(0, 'k--'); % Ligne y=0

% Premier zéro proche de -1
sol1 = newton(f, fp, -1, 1e-5)

% deuxième zéro proche de 2
sol2 = newton(f, fp, 2, 1e-5)

% Vérif
f_sol1 = f(sol1)
f_sol2 = f(sol2)

% Plot the two points
hold on;
plot([sol1 sol2], [f_sol1 f_sol2], 'o');