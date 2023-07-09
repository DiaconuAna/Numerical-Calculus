% divided differences

function d = dividedDiff(x, f)
    n = length(x);
    % turn f into a column vector - first column
    d = [f', zeros(n, n-1)];
    % triangle above the secondary diagonal
    for k = 2:n
        for i = 1: n-k+1
            n1 = d(i+1, k-1) - d(i, k-1);
            n2 = x(i+k-1)-x(i);
            d(i,k) = n1/n2;
        end
    end
end
        