function [t, y] = Euler(f, tspan, y0, h)
% Input :
% f     : représente l'équation différentielle 
% dydt  : f(t, y)
% tspan : [t0, tf] t0: temps initial, tf: temps final
% y0    : condition initiale y(t0)
% h     : pas d'intégration
% Output:
% t     : [t0, t1, t2, t3, ..., tf]
% y     : [y0, y1, y2, y3, ..., yf]

t0 = tspan(1);
tf = tspan(2);
t(1) = t0;
y(1) = y0;
n = 1;
while t(n) < tf
    y(n+1) = y(n) + h*f(t(n), y(n));
    t(n+1) = t(n) + h;
    n = n + 1;
end
