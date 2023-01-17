clear;clc;close all;

% ED : (ordre t,y important !)
dy = @(t, y) y - 2*t;

n = 4;
h = 0.5;
t0 = 1;
y0 = 0;

tspan = [t0, t0+n*h];
[t, y] = Euler(dy, tspan, y0, h)
[t_005, y_005] = Euler(dy, tspan, y0, h/10)

plot(t, y, 'o-', t_005, y_005, 'x-');
legend("h = 0.5","h = 0.05");