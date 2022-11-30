%% Q2

A = [1/2 1/3 1/4;
    1/3 1/4 1/5;
    1/4 1/5 1/6]

b = [1 2 3]'

% 1.
[L U P] = lu(A)

% 2.
y = L\(P*b)

x = U\y

% 3.
err = cond(A)*eps

A*x


%% Q3
clear;clc;close;

f = @(x) cosh(x) * cos(x) - 1
ezplot(f, [-100, 100]);
yline(0, 'k--');

a = 4; b = 5;

c = (a+b)/2; % Point au milieu

% On remplace l'autre point du même côté de f=0
if f(a)*f(c) < 0
    b = c;
else
    a = c;
end

x = fzero(f, 4.5)

%% Q4

a = 1;
h = logspace(-1, -16, 16);
Dh = (sin(a + h) - sin(a))./h;
err = abs(Dh - cos(a));
loglog(h, err, '*-');

