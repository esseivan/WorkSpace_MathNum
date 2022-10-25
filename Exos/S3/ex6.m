% Ex 6
clear; clc; close all;

% a)
l1 = 2; l2 = sqrt(2); l3 = l2;
gamma = pi/2;
p1 = sqrt(5); p2 = p1; p3 = p1;
x1 = 4; y1 = 0; x2 = 0; y2 = 4;

syms x y t;
A2 = l3*cos(t) - x1;
B2 = l3*sin(t);
A3 = l2*cos(t+gamma) - x2;
B3 = l2*sin(t+gamma) - y2;

D = 2*(A2*B3-B2*A3);
N1 = B3*(p2^2-p1^2-A2^2-B2^2)-B2*(p3^2-p1^2-A3^2-B3^2);
N2 = -A3*(p2^2-p1^2-A2^2-B2^2) + A2*(p3^2-p1^2-A3^2-B3^2);

f = N1^2+N2^2-(p1*D)^2;
ezplot(f)
f(pi/4)