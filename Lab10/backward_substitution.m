function X = backward_substitution(A, B)
    n = size(A, 1);
    X = zeros(1,n);
    X(n) = B(n)/A(n,n);
    for i = n-1:-1:1
        sum = 0;
        for j = n:-1:i+1
            sum = sum + A(i,j) * X(j);
        end
        X(i) = 1/A(i,i) * (B(i) - sum);
    end
end