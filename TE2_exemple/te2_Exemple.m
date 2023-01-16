
%% Ex1
clear;clc;

x = [-1, 0, 1, 2];
y = [-10, 2, 8, 32];

% a) poly fit
c = polyfit(x, y, 3)

% b) à faire sur papier

% c) spline en x=1/2
spline(x, y, 0.5)

%% Ex2
clear;clc;close all;

t_an = 0:0.5:2;
gamma = [1, 0.994, 0.990, 0.985, 0.979];

% a) Régression log-lin
% ln(gamma) = y = ln(a) - b*t = -b*t + c
% ou c = ln(a) <=> a = exp(c)

y = log(gamma)
coeff = polyfit(t_an, y, 1)
b = -coeff(1);
c = coeff(2);
a = exp(c)

p = @(t) a*exp(-b*t)
tt = linspace(-1, 3, 1e3);
plot(t_an, gamma, 'o', tt, p(tt), '-');

% b) exp(-b*t) = 0.5 => -b*t = ln(0.5) => t = -ln(0.5)/b
temps_demievie = -log(0.5)/b
p(temps_demievie)

%% Ex3
clear;clc;close all;

% a) Réduction d'ordre
% y1 = y
% y2 = y1' = y'
% y3 = y2' = y''

% y1(0) = 1; y2(0) = 0

% Voir fonction ex3_osc

% b) Evaluer en x = 5
clc;

% Il faut impérativement commencer à t=0 (1e-12)
% Autrement le résultat est faux
tspan_b = [1e-12, 5];

y0 = [1; 0];

[t, y] = ode45(@ex3_osc, tspan_b, y0);

y_5 = y(height(y)) % Dernier élément, comme tspan s'arrete a 5

hold on;
plot(t, y, 'o-');
legend("y", "y'");

% c) Bessel

ordre = 0;
tspan = 5;
real_value = besselj(ordre, tspan)

err_abs = y_5 - real_value
err_rel = err_abs / abs(real_value)
err_rel_pourcent = 100*err_rel
% Erreur relative de 0.000393 % 


%% Verif besselj

t = linspace(0, 5, 1e3);
y = besselj(0, t);
hold on; plot(t, y, 'g');
legend("y", "y'", "besselj");






