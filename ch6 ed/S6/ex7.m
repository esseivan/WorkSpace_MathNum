%% Ex 7

%% a)
clear;clc;close;

y0 = [0; 1];
tspan = [0; 5];

[t, y] = ode23(@ex7a_osc, tspan, y0);

plot(t, y, 'o-');

%% b)
clear;clc;close;

y0 = [1; 0; 2];
tspan = [0; 5];

[t, y] = ode23(@ex7b_osc, tspan, y0);

plot(t, y, 'o-');
legend("y1","y2","y3");