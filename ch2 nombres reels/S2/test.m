%Test
clear; close all; clc;


base = 2;
n = 3;
m1 = -2;
m2 = 3;

2
% epsilon : 1.0 * base^-n
epsilon = base^(-n)

% Nombre de nombres : (base^n) * (m2 - m1 + 1)
nombreDeNombres = base^n * (m2-m1+1)

% Nombre minimum possible : 1.0 * base^m1
minValue = base^m1

% Nombre maximal possible : a0.b1b2b3...bn * base^m2
% = ((base-1)+(base^n-1)*base^-n)*base^m2
% = (base-1)*base^m2 + (base^n*base^-n - base^-n)*base^m2
% = ((base-1) + (1-base^-n))*base^m2
maxValue = ((base-1) + (1-base^(-n)))*base^m2

