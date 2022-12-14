%% Exo 5

%% a)
a = -100000000
b = 1

x1 = -a/2 + sqrt((a/2)^2 - b)
x2 = -a/2 - sqrt((a/2)^2 - b)

%% b)
x2_b_1 = b/x1
x2_b_2 = abs(a) - x1
% La 2e formule ne permet pas d'avoir le resultat precisement a cause des
% valeurs elevees des nombres de a et x1 (et faible de x2)
% alors que la premiere fonctionne, b est 1

x1_b_1 = b/x2
x1_b_2 = abs(a) - x2
% Ici, la premiere formule donne un resultat errone

%% c)
results = roots([1 a b])
% Comparaison :
err_x1 = results(1)-x1
err_x2 = results(2)-x2
err_x1_b_1 = results(1)-x1_b_1
err_x1_b_2 = results(1)-x1_b_2
err_x2_b_1 = results(2)-x2_b_1
err_x2_b_2 = results(2)-x2_b_2

bar([err_x1 err_x1_b_1 err_x1_b_2])
%`hold on;
bar([err_x2 err_x2_b_1 err_x2_b_2])
