n1 = 4;
n2 = 9;

%[A,B] = generate_matrix_1(n1);
[A,B] = generate_matrix_2(n2);

%A = 5 * eye(n1) - diag(ones(n1-1,1),-1) - diag(ones(n1-1,1),1);
%B = 3 * ones(n1,1) + triu(ones(n1,1)) + tril(ones(n1,1),1-n1);

%A = 5 * eye(n2) - diag(ones(n2-1,1),1) - diag(ones(n2-1,1),-1) - diag(ones(n2-3,1),3)-diag(ones(n2-3,1),-3)
%B = ones(n2,1) + triu(ones(n2,1)) + tril(ones(n2,1),1-n2) + triu(ones(n2,1),-2) + tril(ones(n2,1), 3-n2)

% Gauss Elimination with partial Pivoting
disp("Gauss Elimination with partial Pivoting");
X = gauss_pivoting(A,B)

% LUP factorization
[L,U,P] = LUP(A);

disp("LUP factorization");
y = forward_substitution(L, P*B);
x = backward_substitution(U, y)

% Cholesky Factorization
disp("Cholesky Factorization");
U = chol(A);
y = forward_substitution(U',B);
X = backward_substitution(U,y)

% QR Factorization
disp("QR Factorization");
[Q,R] = qr(A);
X = backward_substitution(R, Q'*B)