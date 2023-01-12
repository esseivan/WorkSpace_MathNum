%% Ex 8
clear;clc;close;

tspan = [0, 10];
y0 = [0, 1];

[t, y] = ode23(@ex8_osc, tspan, y0);

plot(t, y, 'o-');

legend("\theta", "\theta'")