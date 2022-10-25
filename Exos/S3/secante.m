function [s, n] = secante(f, x0, x1, tol)
% f: f(x) dont on cherche le zéro
% x0 : point de départ 0
% x1 : point de départ 1
% tol : précision voulue
% s : zéro (f(s) ~= 0)
% n : nombre d'ittérations

n = 1;
x2 = x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0));
while abs(x1 - x2) > tol * abs(x2)
    x0 = x1; x1 = x2;
    x2 = x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0));
    n = n + 1;
end
s = x2;
end