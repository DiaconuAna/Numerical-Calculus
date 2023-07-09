% back substitution for solving an upper triangular linear system

A = [2 4 2; 0 -1 1;0 0 -1];
B = [8;0;-1];
X = backward_substitution(A,B);
X

% forward substitution for solving a lower triangular linear system
A = [1 0 0;1/2 1 0;1/2 1 1];
B = [8;4;3];
X = forward_substitution(A,B);
X