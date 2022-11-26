function c = interleave_corrige(a, b)
% on cherche la taille des vecteurs a et b
% on prend la plus petite taille des deux
% on fait une boucle for
% pour mettre les elements a la suite dans le vecteur c
% on insere ensuite les elements restants
n = length(a); m = length(b);
k = min([n m]);
c = [];
for i = 1:k
    c = [c a(i) b(i)];
end
if n == k
    c = [c b(k + 1:m)];
elseif m == k
    c = [c a(k + 1:n)];
end
end