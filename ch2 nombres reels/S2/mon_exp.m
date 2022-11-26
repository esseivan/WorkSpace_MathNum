function y = mon_exp(x, n)
% x est un nombre, n est un entier positif
% y est la n-ieme approximation de Taylor de exp(x)
terme = 1; y = 1;
for k = 1:n
terme = (x^k)/factorial(k);
y = y + terme;
end