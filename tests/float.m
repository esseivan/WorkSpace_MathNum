% Floating point numbers
% Fl(base, n, M1, M2)

base = 2; % base du systeme
n = 23; % Taille de la mantisse en bits

% Exposants : definis par min et max
%M1 = -2; % Exposant minimum
%M2 = 3; % Exposant maximum

% Exposant : definis par nb bits
e = 8;
d = power(base, e-1) - 1
M1 = 1 - d
M2 = power(base, e-1) - 1

% x = (a0.b1..bn)*base^k
% avec M1 <= k <= M2 et k = E-d
% epsilon, plus petite valeur que l'on peut ajouter a 1

%% Entrees utilisateur
a0 = 1;
mantisse = 0.5;
k = 0;

%% Calculs

% epsilon
epsilon = power(base, -n)

% Plut petit nombre : (1.0) * base^M1 = base^M1
% mantisse = 0, a0 = min, exposant = M1
xMin = (1+power(base, -n))*power(base, M1)

% Plus grand nombre (si pas d'infini) : (x.xxxx) * base^M2
% mantisse = max = base^n - 1, a0 = base-1, exposant = M2

xMax = (base- power(base, n)) * power(base, M2)

% resultat
x = (a0+mantisse)*power(base, k)




