function F = exemple(X)
% X : composantes x et y
% x = X(1)
% y = X(2)
% F : avec resultat de f et de g

x = X(1); y = X(2);

f = 2*x - y - exp(-x);
g = 2*y - x - exp(-y);

F = [f g];

end