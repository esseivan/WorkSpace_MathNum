function ypoint = circuit(t, y)
E0 = 5; f = 400; R = 20; C = 100; L = 400;
E = E0*sin(2*pi*f*t);
ypoint = [y(2); 1/L*(E - R*y(2) - y(1)/C)];

end