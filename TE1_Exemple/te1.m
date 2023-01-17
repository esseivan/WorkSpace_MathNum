%% Ex 1

run float_list.mlx

%% Ex 2

clear;clc;close;

f = @(x) x^3 - x^2 + sin(x+3)
ezplot(f, [-2 2])
yline(0, 'k--');
grid on;

x1 = bissection(-2, 0, 1e-6, f);
x2 = bissection(0, 1, 1e-6, f);
x3 = bissection(1, 2, 1e-6, f);

fp = @(x) 3*x^2 - 2*x + cos(x+3);

x1 = newton(f, fp, -1, 1e-6);
x2 = newton(f, fp, 0, 1e-6);
x3 = newton(f, fp, 0, 1e-6);

x1 = fzero(f, -1)
x2 = fzero(f, 0)
x3 = fzero(f, 1.5)

% Verif
f(x1)
f(x2)
f(x3)

%% Ex 3
clear;clc;close;

x0 = 1;

f  = @(x) 5*x^3 + 2*x - 1;
fp = @(x) 15*x^2 + 2;
fs = @(x) 30*x;

g = @(x) x - (2*f(x)*fp(x))/(2*(fp(x))^2 - f(x)*fs(x));

x_km1 = 0;
x_k = x0;

fprintf("Resultat : \n");
fprintf('\tx%d = %f\n', 0, x_k);
count = 3;
result = zeros(count, 1);
for l=1:count
    x_km1 = x_k;
    x_k = g(x_km1);
    result(l) = x_k;
    fprintf('\tx%d = %f\n', l, x_k);
end

% x1 = result(1)
% x2 = result(2)
% x3 = result(3)


%% Ex 4
clear;clc;close;

hilbe(4)

