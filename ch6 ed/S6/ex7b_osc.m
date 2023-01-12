function dydt = ex7b_osc(t,y)

y1 = y(1);
y2 = y(2);
y3 = y(3);

dydt = [y2;
    y3;
    cos(t) + y3*5*cos(2*t)/(t+1)^2 - y2 - 1/(3+sin(t))];

end

