function dydt = oscillateur_ex6a(t, y)
% t: variable indépendante
% y: [y1]
% dydt: [y1']

y1 = y;

dydt = -y1*1.2*sin(10*t);

end