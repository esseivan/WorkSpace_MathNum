function dydt = ex8_func(t, y)

g = 9.81;
l = 0.5;


dydt = [y(2);
    -g*l*sin(y(1))];
end