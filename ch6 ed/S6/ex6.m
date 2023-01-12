%% EX 6

%% a)
clear;clc;close;

tspan = [0, 5];
y0 = 1;

[t, y] = ode23(@oscillateur_ex6a, tspan, y0);

plot(t, y, 'o-');

%% b)
clear;clc;close;

tspan = [0, 5];
y0 = 1;

[t, y] = ode23(@oscillateur_ex6b, tspan, y0);

plot(t, y, 'o-');