%% Ex1
clear;clc;close all;


u0 = 1;
u1 = 1;

for n=2:1000
    un = u1 + u0;
    % Pour le prochain :
    u0 = u1;
    u1 = un;
%     r = fibonacci(n+1);
%     fprintf("n=%d - u_n=%d vs %d\n", n, un, r);
    fprintf("n=%d - u_n=%d\n", n, un);
end

fprintf("Fibonacci(1000) = %d\n", un);


%% Ex2
clear;clc;close all;

% 1)
x = [-3; 2; -1; 3; 1];
y = [1; 5; -4; 12; 1];

coeff = polyfit(x, y, 4)


    % plot
    xx = linspace(-4, 4, 1e3);
    yy = polyval(coeff, xx);
    
    plot(x, y, 'o', xx, yy, '-');

% 2)
yval = polyval(coeff, 1.5)



%% Ex3
clear;clc;close all;

t = [0; 2; 4; 6; 8; 9];
n = [5.03; 4.40; 3.88; 3.30; 3.08; 2.92];

m = 1./n;
% modèle m=beta*t + gamma
% Donc polynôme degrée 1
coeff = polyfit(t, m, 1);
gamma = coeff(2);

alpha = 1/gamma
beta = coeff(1)

tt = linspace(-1, 10, 1e3);
nn = alpha./(1+alpha*beta*tt);
plot(t, n, 'o', tt, nn, '-');


%% Ex4
clear;clc;close all;

y0 = [2; -1];
xspan = [0; 25];

[x, y] = ode45(@ex4_ed, xspan, y0);

plot(x, y);
yline(0);

y_25 = y(height(y), 1)


% plot(x, y(:,1));
ym = 0; xm = 0;
for c=1:height(y)
    if y(c, 1) > ym
        ym = y(c, 1);
        xm = x(c);
    end
end




