function [A,B] = generate_matrix_1(n)
    A = zeros(n);
    B = zeros(n,1);
    B(1) = 4;
    B(n) = 4;
    A(1,1) = 5;
    A(1,2) = -1;
    A(n,n-1)=-1;
    A(n,n) = 5;
    for j = 2:n-1
        B(j) = 3;
        A(j,j-1) = -1;
        A(j,j) = 5;
        A(j,j+1) = -1;
    end
end