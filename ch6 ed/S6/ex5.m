clear;clc;

% ED : (ordre t,y important !)
dy = @(t, y) y - 2*t;

n = 4;
h = 0.5;
t0 = 1;
y0 = 0;

tspan = [t0, t0+n*h];
[t, y] = Euler(dy, tspan, y0, h)

plot(t, y, 'o');