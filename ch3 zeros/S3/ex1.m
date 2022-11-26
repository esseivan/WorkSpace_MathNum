% Ex1
clear;clc;close all;

f = @(x) exp(x) - 4*x;
ezplot(f); % pour visualiser les 0
yline(0,'k--'); % Ligne du y=0

sol1 = bissection(-1, 1, 1e-10, f)
sol2 = bissection(1, 3, 1e-10, f)
% vérif
f_sol1 = f(sol1)
f_sol2 = f(sol2)

% Plot the two points
hold on;
plot([sol1 sol2], [f_sol1 f_sol2], 'o');