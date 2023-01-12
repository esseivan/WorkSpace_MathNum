%% a)

clear;clc;close;

% ED :
dw = @(t, w) -1.2*sin(10*t)*w;

t0 = 0;
tf = 5;
w0 = 1;

tspan = [t0, tf];
[t, w] = ode23(dw, tspan, w0);

plot(t, w, 'o--');

%% b)
clear;clc;close;

dy = @(t, y) cos(t)/3 - y/(3+3*t^2);
[t, y] = ode23(dy, [0, 5], 1);
plot(t, y, 'o--');