% FilleFloat
clear; clc;


base = 5;
n = 3;
m1 = -2;
m2 = 3;

nbNb = (base-1)*(base^n)*(m2-m1+1);

% Génération de toutes les mantisses possibles
Mantisse = zeros(1, (base^n));
for c=0:(base^n-1)
    Mantisse(c+1) = c*(base^(-n));
end

Mantisse2 = [];
for a0=0:(base-1)
    Mantisse2 = [Mantisse2 (a0+Mantisse)];
end

Result = [];
for k=m1:m2
    Result = [Result Mantisse2*(base^k)];
end

Result = transpose(Result);

%plot(Result, 0, 'b.', 'MarkerSize', 1, 'Marker','o')

epsilon = Mantisse(2)
MinValue = Result(2)
MaxValue = Result(length(Result))

