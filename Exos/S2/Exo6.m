%% Ex6


%% 1
% Cherche le plus petit nombre qui peut etre additionne a 1
x = 1; p = 0; y = 1; z = x + y;
while x ~= z,
y = y/2;
p = p + 1;
z = x + y;
end
disp(1 + 1/2^p)
disp(p)

%% 2
% Cherche le nombre le plus proche de 0
x = 1; q = 0;
while x > 0,
x = x/2;
q = q + 1;
end
disp(1/2^q)
disp(q)

%% 3
% Cherche le nombre le plus grand
x = 1; r = 0;
while x ~= inf,
x = 2*x;
r = r + 1;
end
disp(2^r)
disp(r)