% Test bissection
clear;clc;

f = @(x) x^2 - 2*x; % zeros en 0 et 2

sol1 = bissection(5, 1.5, 1e-10, f)
f_sol1 = f(sol1)

sol2 = bissection(-1, 1.5, 1e-10, f)
f_sol2 = f(sol2)

% Test si aucun zéro se trouve entre-deux
sol3 = bissection(5, 9, 1e-10, f)
f_sol3 = f(sol3)

% Test si tolérance trop faible
sol4 = bissection(-1, 1.5, 1e-400, f)
f_sol4 = f(sol1)
