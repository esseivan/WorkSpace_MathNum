% Serie 1

%% 1
disp '1 :'
format long
pi
exp(1)

%% 2
disp '2 :'
format rat
pi
exp(1)
format long

%% 3
disp '3 :'
exp(pi) / power(pi, exp(1))
disp 'e^pi plus grand'

%% 4
disp '4 :'
x = linspace(1, 10, 10)
x = x'
x = x(:)
disp 'x(:) selectionne toutes les lignes de x'

%% 5
disp '5 :'
x = linspace(1, 100, 100);
y = ones([1 100]);
y(1, 2) = 2;

