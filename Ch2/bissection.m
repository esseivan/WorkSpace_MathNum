function c = bissection(f, a, b, tolerance)
% On recherche le zéro de f sur l'intervalle [a, b]
% signe de f(a) != signe de f(b)

while abs(a-b) > tolerance*abs(b) % erreur relative
    c = (a+b)/2;
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end
c = (a+b)/2;
end