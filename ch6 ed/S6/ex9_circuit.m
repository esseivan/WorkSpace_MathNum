function dydt = ex9_circuit(t, y)

y1 = y(1);
y2 = y(2);
y3 = y(3);

E0 = 5;
f = 400;
R = 20;
C = 100e-3;
L = 50e-3;
E = E0 * sin(2*pi*f*t);

dydt = [y2;
    y3;
    (E-R*y2-y1/C)/L];


end