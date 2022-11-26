function F = exemple(X)
% Fonction d'exemple pour trouver des zéros par la méthode de Newton avec
% une fonction implicite ou à plusieurs variables avec l'aide de fsolve.
% Doit être donnée en paramètre avec la fonction fsolve
% par exemple : fsolve(@exemple, [0,0])
% X : composantes x et y
% x = X(1)
% y = X(2)
% F : avec resultat de f et de g

x = X(1); y = X(2);

f = 2*x - y - exp(-x);
g = 2*y - x - exp(-y);

F = [f g];

end