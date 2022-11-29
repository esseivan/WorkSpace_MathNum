%% Ex 2

clear;clc;close;

f = @(x) x^3 - x^2 + sin(x+3)
ezplot(f, [-2 2])
yline(0, 'k--');

x1 = fzero(f, -1)
x2 = fzero(f, 0)
x3 = fzero(f, 1.5)

% Verif
f(x1)
f(x2)
f(x3)

%% Ex 4
clear;clc;close;

hilbe(4)

