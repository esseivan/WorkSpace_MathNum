clear all
close all
n = 2;
A = [3 1; -1 2];
b = [2 ; -2];
% n = 100;
% A = rand(n);
% A = A + diag(sum(abs(A), 2));
% b = rand(n);
xe = A\b;
D = diag(diag(A));
L = -tril(A, -1);
U = -triu(A, 1);
niter = 50;
iDb = inv(D)*b;
iDLpU = inv(D)*(L + U);
iDLU = inv(D - L)*U;
iDLb = inv(D - L)*b;
x0 = zeros(n, 1);
% Jacobi
xj = x0;
Xj = xj;
% Gauss-Seidel
xgs = x0;
Xgs = xgs;
for i = 1:niter
    xj = iDLpU*xj + iDb;
    xgs = iDLU*xgs + iDLb;
    e_j(i) = norm(xe - xj);
    e_gs(i) = norm(xe -xgs);
end

semilogy(1:niter, e_j, 'x')
hold on
semilogy(1:niter, e_gs, '*')


