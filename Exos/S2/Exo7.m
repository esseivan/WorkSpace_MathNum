%% Ex 7

m = 50; % les 50 valeurs de x
x = linspace(-1, 1, m); k = 0;
AllErr = {0, 0, 0, 0};
for n = [4 8 16 20]
    for i = 1:m
        y(i) = mon_exp(x(i), n);
    end
    % err_rel = (calc-reel)/reel
    ErrRel = (y./exp(x)) -1;
    k = k + 1;
    AllErr(k) = {ErrRel};
    subplot(3, 2, k)
    plot(ErrRel);
    title(n)
    %ylim([-5e-3 20e-3]); % Pour avoir le meme axe y sur tous les graphes
end

subplot(3, 2, [5, 6])
plot(AllErr{1});
hold on;
plot(AllErr{2});
hold on;
plot(AllErr{3});
hold on;
plot(AllErr{4});
title("All errors on one graph");
legend(["n=4","n=8","n=16","n=20"])

