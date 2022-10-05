% Ex 2

% Fl(2; 3; -2; 2)

b = 2;
n = 3;
M1 = -2;
M2 = 2;

sz = 2^n*(M2-M1+1);
Result = zeros(sz, 1);
i = 0;
for k = M1:M2
    % Pour chaque exposant
    for m = 0:2^n
        i = i+1;
        Result(i) = 1+m * 2^(k-n);
    end
end

disp("Resultats : ");
disp(Result);