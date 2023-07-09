% LUP

A = [2 4 2; 0 -1 1;0 0 -1];
%B = [8;0;-1];

%A = [1 -1 1;-2 2 1;-3 -1 5];
%B = [-1;2;-5];

%A = [1 0 0;1/2 1 0;1/2 1 1];
B = [8;4;3];

[L,U,P] = LUP(A);
% [L1, U1] = lu(A)
L 
U
P
P*A
L*U

%y = forward_substitution(L, P*B)
%x = backward_substitution(U, y)