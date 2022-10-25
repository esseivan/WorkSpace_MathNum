% Ex 4
clear;clc;close all;

f1 = @(x) exp(x) - 4*x;
f2 = @(x) x - tan(x);
f3 = @(x) 1/2 * x * exp(x) - 2 * x^2;

s11 = fzero(f1, 0)
s12 = fzero(f1, 2)

s21 = fzero(f2, 7)
%s22 = fzero(f2, 10) % ne fonctionne pas
s22 = fzero(f2, 10.5)

s31 = fzero(f1, -1)
s32 = fzero(f1, 2)