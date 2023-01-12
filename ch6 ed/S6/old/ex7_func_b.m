function dydt = ex7_func_b(t, y)

% w = w1
% dw1 = w2
% dw2 = w3 = ddw1
dy1 = y(2);
dy2 = y(3);
dy3 = cos(t) + 5*y(3)*cos(2*t)/(t+1)^2 - y(2) - 1/(3+sin(3*t));

dydt = [dy1; dy2; dy3];

end