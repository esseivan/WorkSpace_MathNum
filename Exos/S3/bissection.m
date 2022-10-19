function sol = bissection(x0, x1, tol, f)
% Recherche de 0 de la fonction f entre x0 et x1 avec la tolérance définie
% par tol. La méthode de recherche est par bissection.

if(f(x0)*f(x1) > 0) % f(a) et f(b) de meme signes => pas de resultat
    sol = NaN; % no solution
    return;
end

c = NaN;
while 1
    %disp("f(c) = " + num2str(f(c))); % pour debug

    % Vérification de valeur minimale limite
    cNew = 0.5*x0+0.5*x1;
    if(c == cNew) % Plus de changement dû a la précision
        sol = c;
        disp("unable to meet tolerance for sol="+num2str(sol));
        return
    end
    c = cNew; % changement validé, on continue

    if(f(c)*f(x0) > 0) % f(a) et f(c) de meme signes
        x0 = c;
    else  % f(b) et f(c) de meme signes
        x1 = c;
    end

    % Condition de sortie par erreur relative
    cond = abs(x1-x0);
    if (cond <= tol*abs(x1)) % Condition de fin trouvée, f(c) dans la tolérance
        break; % Finir la boucle
    end

    % Condition de sortie par erreur absolue sur f(c)
%     cond = abs(f(c))
%     if (cond <= tol) % Condition de fin trouvée, f(c) dans la tolérance
%         break; % Finir la boucle
%     end
end

sol = c;

end