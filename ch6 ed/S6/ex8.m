clear;clc;close;
% subst y1' = y2
% y2' = -g*l*sin(y1)

[t, y] = ode23(@ex8_func, [0, 10], [0, 1]);

plot(t, y, 'o-');