function t = pair_corrige_2(a)
% PAIR retourne 1 si tous les elements de a sont pairs
% et retourn 0 sinon

t = sum(abs(rem(a, 2))) == 0;

end