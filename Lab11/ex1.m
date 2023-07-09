n1 = 4;
n2 = 9;

A = 5 * eye(n1) - diag(ones(n1-1,1),-1) - diag(ones(n1-1,1),1);
B = 3 * ones(n1,1) + triu(ones(n1,1)) + tril(ones(n1,1),1-n1);

%A = 5 * eye(n2) - diag(ones(n2-1,1),1) - diag(ones(n2-1,1),-1) - diag(ones(n2-3,1),3)-diag(ones(n2-3,1),-3);
%B = ones(n2,1) + triu(ones(n2,1)) + tril(ones(n2,1),1-n2) + triu(ones(n2,1),-2) + tril(ones(n2,1), 3-n2);

n = size(A, 1);
[x, nit] = jacobi(A, B, zeros(n,1) , 1e-5, 100);
[x, nit] = gaussSeidel(A, B, zeros(n, 1), 1e-5, 100);
[x, nit] = SOR(A, B, zeros(n, 1), 1e-5, 100);
x
