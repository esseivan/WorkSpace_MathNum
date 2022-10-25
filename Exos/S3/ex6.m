% Ex 6
clear; clc; close all;

% a)
l1 = 2; l2 = sqrt(2); l3 = l2;
gamma = pi/2;
p1 = sqrt(5); p2 = p1; p3 = p1;
x1 = 4; y1 = 0; x2 = 0; y2 = 4;

syms t;
A2 = l3*cos(t) - x1;
B2 = l3*sin(t);
A3 = l2*cos(t+gamma) - x2;
B3 = l2*sin(t+gamma) - y2;

D = 2*(A2*B3-B2*A3);
N1 = B3*(p2^2-p1^2-A2^2-B2^2)-B2*(p3^2-p1^2-A3^2-B3^2);
N2 = -A3*(p2^2-p1^2-A2^2-B2^2) + A2*(p3^2-p1^2-A3^2-B3^2);

% c)
f = N1^2+N2^2-(p1*D)^2;
ezplot(f, [-pi pi]);
title("f(\theta)");
yline(0, 'k--'); % line y=0
theta1 = pi/4;
ft1 = eval(subs(f, t, theta1))
theta2 = -theta1;
ft2 = eval(subs(f, t, theta2))
hold on; plot([theta1 theta2], [ft1 ft2], 'ro');

%% d)
clear; clc; close all;
l1 = 3; l2 = 3*sqrt(2); l3 = l1;
gamma = pi/4;
p1 = 5; p2 = p1; p3 = 3;
x1 = 5; y1 = 0; x2 = 0; y2 = 6;

tol = 1e-5;

syms t;
A2 = l3*cos(t) - x1;
B2 = l3*sin(t);
A3 = l2*cos(t+gamma) - x2;
B3 = l2*sin(t+gamma) - y2;

D = 2*(A2*B3-B2*A3);
N1 = B3*(p2^2-p1^2-A2^2-B2^2)-B2*(p3^2-p1^2-A3^2-B3^2);
N2 = -A3*(p2^2-p1^2-A2^2-B2^2) + A2*(p3^2-p1^2-A3^2-B3^2);

% Plot
f = N1^2+N2^2-(p1*D)^2;
ezplot(f, [-pi pi]);
title("f(\theta)");
yline(0, 'k--'); % line y=0

% Find zeros
% 1
n = 1;
s(n) = bissection_sym(-0.8, -0.7, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 2
n = n+1;
s(n) = bissection_sym(-0.4, -0.3, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 3
n = n+1;
s(n) = bissection_sym(1.1, 1.2, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 4
n = n+1;
s(n) = bissection_sym(2.1, 2.2, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% Plot
hold on; plot(s, fr, 'ro');

disp("theta :");
disp(s);
disp("f(theta) :");
disp(fr);
disp("theta (degres) :");
s_deg = s.*(180/pi);
disp(s_deg);

%% e)
clear; clc; close all;
l1 = 3; l2 = 3*sqrt(2); l3 = l1;
gamma = pi/4;
p1 = 5; p2 = 7; p3 = 3;
x1 = 5; y1 = 0; x2 = 0; y2 = 6;

tol = 1e-8;

syms t;
A2 = l3*cos(t) - x1;
B2 = l3*sin(t);
A3 = l2*cos(t+gamma) - x2;
B3 = l2*sin(t+gamma) - y2;

D = 2*(A2*B3-B2*A3);
N1 = B3*(p2^2-p1^2-A2^2-B2^2)-B2*(p3^2-p1^2-A3^2-B3^2);
N2 = -A3*(p2^2-p1^2-A2^2-B2^2) + A2*(p3^2-p1^2-A3^2-B3^2);

% Plot
f = N1^2+N2^2-(p1*D)^2;
ezplot(f, [-pi pi]);
title("f(\theta)");
yline(0, 'k--'); % line y=0

% Find zeros
% 1
n = 1;
s(n) = bissection_sym(-0.7, -0.65, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 2
n = n+1;
s(n) = bissection_sym(-0.4, -0.3, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 3
n = n+1;
s(n) = bissection_sym(0, 0.1, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 4
n = n+1;
s(n) = bissection_sym(0.4, 0.5, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 5
n = n+1;
s(n) = bissection_sym(0.95, 1, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% 6
n = n+1;
s(n) = bissection_sym(2.5, 2.6, tol, f);
fr(n) = eval(subs(f, t, s(n)));

% Plot
hold on; plot(s, fr, 'ro');

disp("theta :");
disp(s);
disp("f(theta) :");
disp(fr);
disp("theta (degres) :");
s_deg = s.*(180/pi);
disp(s_deg);
