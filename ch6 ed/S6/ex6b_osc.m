function dydt = ex6b_osc(t, y)
% t: variable indépendante
% y: [y1]
% dydt: [y1']

y1 = y;

dydt = (cos(t) - y1/(1+t^2))/3;

end