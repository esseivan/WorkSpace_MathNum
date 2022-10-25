% Ex 2
clear;clc;close all;

f = @(x) x - tan(x);
ezplot(f, [0 15]); % pour visualiser les 0
yline(0,'k--'); % Ligne du y=0

% 3e zéro entre 7 et 7.73
sol1 = secante(7, 7.73, 1e-10, f)

% 4e zéro (3e si le x=0 non compté) entre 10 et 10.91
sol2 = secante(10.9, 10.91, 1e-10, f)
% vérif
f_sol1 = f(sol1)
f_sol2 = f(sol2)

% Plot the two points
hold on;
plot([sol1 sol2], [f_sol1 f_sol2], 'o');

% Remarques : La limite supérieure doit être choisie précisemment autrement
% à cause de l'asymptote verticale, on se retrouve sur la partie positive.