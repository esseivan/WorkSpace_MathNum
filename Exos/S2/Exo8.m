%% Ex 8

somme = 0; % somme est une variable en double precision
for i = 1:10
somme = somme + 0.1;
end
if somme == 1
disp('Le compte est bon')
else
disp('Detournement de fonds!')
end

% a) On s'attend a ce que 10 * 0.1 nous donne 1
% cependant des erreurs se sont introduites car certains nombres ne
% pouvaient pas etre representes exactement et cette erreur a ete
% conservee par la suite. Nous somme donc a 1 - 1.11E-16

% b) On peut le convertir en single-precision pour enlever ces petites
% erreurs de calculs :
disp('## Conversion en single :');
somme = single(somme);

if somme == 1
disp('Le compte est bon')
else
disp('Detournement de fonds!')
end