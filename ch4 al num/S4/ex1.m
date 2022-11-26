% Ex 1

A = [3 12 1;
    12 0 2;
    0 2 3];
b = [2.36; 5.25; 2.75];

% Ax = b
% x = A^-1*b
x = A\b;
result = [["Pomme";"Banane";"Melon"] x]