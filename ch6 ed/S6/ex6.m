%% EX 6

%% a)
clear;clc;close;

tspan = [0, 5];
y0 = 1;

[t, y] = ode23(@ex6a_osc, tspan, y0);

plot(t, y, 'o-');

%% b)
clear;clc;close;

tspan = [0, 5];
y0 = 1;

[t, y] = ode23(@ex6b_osc, tspan, y0);

plot(t, y, 'o-');