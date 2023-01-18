function dydt = ex4_ed(x, y)
dydt = [y(2);
    cos(2*x)*y(1)];
end

