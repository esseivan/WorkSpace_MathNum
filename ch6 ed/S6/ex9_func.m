function dydt = ex9_func(t, y)

R = 20;
L = 50e-3;
C = 100e-3;
E0 = 5;
f = 400;

% Q' = I
% Q'' = I'
% Q = y(1) et I = y(2)
Q = y(1);
I = y(2);
% I' = (E - RI - Q/C)/L

dydt = [I;
    (E0*sin(2*pi*f*t) - R*I - Q/C)/L];

end