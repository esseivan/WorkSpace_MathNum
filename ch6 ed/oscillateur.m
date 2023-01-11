function dydt = oscillateur(t, y)
%OSCILLATEUR Définition de l'ED d'un oscillateur pour l'exemple 1s
% t: variable indépendante
% y: [y1; y2]
% dydt: [y1'; y2']

y1 = y(1);
y2 = y(2);

dydt = [y2; -y1];

end