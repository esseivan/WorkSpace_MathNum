function [ysol, t, y] = euler(f, tspan , y0, h)
%euler Approximation par la méthode d'Euler
%   L'approximation va chercher la valeur de y au point t_final
%   f : fonction à évaluer
%   tspan = [t0, tfinal] : Vecteur avec les deux temps importants
%       t0 : temps de départ
%       tfinal : temps ou l'on cherche la valeur y
%   y0 : condition initiale
%   h : pas (incrément)

t0 = tspan(1); tfinal = tspan(2);
t_calc = t0;
y_calc = y0;
y = [y0];
t = [t0];
while t_calc < tfinal
    y_calc = y_calc + h*f(t_calc, y_calc);
    y = [y y_calc];
    t_calc = t_calc + h;
    t = [t t_calc];
end
ysol = y_calc;
end