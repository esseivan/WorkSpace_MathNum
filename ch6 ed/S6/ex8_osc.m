function dydt = ex8_osc(t, y)

y1 = y(1);
y2 = y(2);

g = 9.81;
l = 0.5;

dydt = [y2;
    -g*l*sin(y1)];

end

