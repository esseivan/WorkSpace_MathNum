% Ex 2

% Fl(2; 3; -2; 2)
% Fl(base; mantisse; emin; emax)

b = 5;
n = 2;
% en = 2; % bits de l'exposant
% d = 1; % decalage
% M1 = -d;
% M2 = b^(en)-1-d;
M1 = -1;
M2 = 2;

sz = b^n*(M2-M1+1);
Result = zeros(1, sz);
i = 0;
% M1 : exposant minimum
% M2 : exposant maximum
for k = M1:M2
    % Pour chaque exposant
    for m = 0:b^n-1
        %disp("Number is : m="+m+"; e="+k);
        i = i+1;
        res = (1+m*b^(-n))*b^k
        Result(i) = res;
    end
end

disp("Resultats : ");
disp(Result);

plot(Result, 0, 'b.', 'MarkerSize', 1, 'Marker','o')