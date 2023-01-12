%% Ex 9
clear;clc;close;

tspan = linspace(0, 0.1, 1e3);
y0 = [0;0;0];

[t, y] = ode45(@ex9_circuit, tspan, y0);

% Plot de tout
plot(t, y, '-');

% Plot séparés
figure
subplot(311);
plot(t, y(:, 1), '-');
legend("Q");
subplot(312);
plot(t, y(:, 2), '-');
legend("I");
subplot(313);
plot(t, y(:, 3), '-');
legend("I'");