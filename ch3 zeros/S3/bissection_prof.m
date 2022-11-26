function c = bissection(a, b, tolerance, f)
% On recherche le zéro de f sur l'intervalle [a, b]
% signe de f(a) != signe de f(b)

while abs(a-b) > tolerance*abs(b) % erreur relative
    c = (a+b)/2; % Point au milieu

    % On remplace l'autre point du même côté de f=0
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end
% Dernier point au milieu, optionnel
c = (a+b)/2;
end