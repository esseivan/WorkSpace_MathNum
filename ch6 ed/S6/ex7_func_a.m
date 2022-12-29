function dydt = ex7_func_a(t, y)
% y1' = y2
% y2' = (2 - 2*t*y2 - 3*y1)/(1+t^2)

dydt = [y(2);
    (2 - 2*t*y(2) - 3*y(1))/(1+t^2)];

end