% FilleFloat
clear; clc;


base = 5;
n = 3;
m1 = -2;
m2 = 3;

nbNb = (base-1)*(base^n)*(m2-m1+1);

for Unit=1:(base-1)
    Mantisse = zeros(1, n);
    for l=1:n
        for b=1:(base-1)
            Mantisse(n-(l-1)) = b
            x = CalcFloat(base, Unit, Mantisse, 0)
        end
    end
end


