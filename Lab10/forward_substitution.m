function X = forward_substitution(A, B)
    n = size(A, 1);
    X = zeros(1,n);
    X(1) = B(1)/A(1,1);
    for i = 2:n
        sum = 0;
        for j = 1:i-1
            sum = sum + A(i,j) * X(j);
        end
        X(i) = 1/A(i,i) * (B(i) - sum);
    end
end