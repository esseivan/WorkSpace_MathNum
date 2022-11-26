function [s, n] = newton(f, fp, x0, tol)
% f: f(x) dont on cherche le zéro
% fp : f'(x)
% x0 : point de départ
% tol : précision voulue
% s : zéro (f(s) ~= 0)
% n : nombre d'ittérations

n = 1;
x1 = x0 - f(x0)/fp(x0);
while abs(x0 - x1) > tol * abs(x1)
    x0 = x1;
    x1 = x0 - f(x0)/fp(x0);
    n = n + 1;
end
s = x1;
end