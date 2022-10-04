%% Ex 7

m = 50; % les 50 valeurs de x
x = linspace(-1, 1, m); k = 0;

for n = [4 8 16 20]
    for i = 1:m
        y(i) = mon_exp(x(i), n);
    end
    % err_rel = (calc-reel)/reel
    ErrRel = (y./exp(x)) -1;
    k = k + 1;
    subplot(2, 2, k)
    plot(ErrRel);
    title(n)
    %ylim([-5e-3 20e-3]); % Pour avoir le meme axe y sur tous les graphes
end