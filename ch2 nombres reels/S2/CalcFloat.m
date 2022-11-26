function x=CalcFloat(base, u, m, E)
    % Calcul de float

    % Conversion du tableau m en valeur
    n = length(m);
    y = 0;
    for c=1:n
        y = y + m(n-(c-1)) * base^(-n);
    end

    x = ((u + y) * base^E);
end