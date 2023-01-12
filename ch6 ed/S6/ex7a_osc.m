function dydt = ex7a_osc(t,y)

y1 = y(1);
y2 = y(2);

dydt = [y2;
    (2-2*t*y2-3*y1)/(1+t^2)];

end

