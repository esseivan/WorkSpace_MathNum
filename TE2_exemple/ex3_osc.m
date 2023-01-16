function dydt = ex3_osc(t, y)
%EX3_OSC Définition de l'ED d'un oscillateur pour l'exemple 1s
% t: variable indépendante (x)
% y: [y1; y2]
% dydt: [y1'; y2']
y1 = y(1); y2 = y(2);

dydt = [y2;
    (-y2/t-y1)];

end

