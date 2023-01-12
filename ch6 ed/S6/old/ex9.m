clear;clc;close;

% Q' = I
% Q'' = I'
% Q = y(1) et I = y(2)
% I' = (E - RI - Q/C)/L

[t, y] = ode45(@ex9_func, [0, 100e-3], [0, 0]);
plot(t, y);


%% Corrigé

% ??? pas du tout la meme chose. L pas le meme, jusqua 100 s et pas 100 ms
[t, w] = ode45(@circuit, linspace(0, 0.1, 1e3), [0; 0]);
plot(t, w, '-');