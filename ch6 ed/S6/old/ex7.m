%% a)
% Substitution w' = w2
% => w2'*(1+t^2) + 2*t*w2 + 3*w = 2
clear;clc;close;

ode23(@ex7_func_a, [0, 5], [0, 1])

%% b)
clear;clc;close;

ode23(@ex7_func_b, [0, 5], [1, 0, 2]);