function t = pair(a)
%pair Indique si un élément impair se trouve dans la matrice
%   Retourne 1 si un élément est impair
    result = abs(rem(a,2)); % Chaque element modulo 2 en valeur absolue
    result = sum(result);

    t = 0;
    if result > 0
        t = 1;
    end
end