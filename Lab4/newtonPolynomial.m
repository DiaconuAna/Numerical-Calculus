% newton polynomial

function N = newtonPolynomial(x, f, xx)
    n = length(x) - 1;
    % divided differences table
    dd = dividedDiff(x, f);
    
    lxx = length(xx);
    nodesCount = ones(1, lxx);
    sum = dd(1,1) * ones(1, lxx);
    
    for j = 1:lxx
        for i = 1:n
            nodesCount(j) = nodesCount(j)*(xx(j) - x(i)); % gradually building (x-x0)(x-x1)...(x-x_n) for each node
            % f[x0,...x_n]*(x-x0)(x-x1)...(x-xn)
            sum(j) = sum(j) + nodesCount(j) * dd(1, i+1); 
        end
    end
    
    N = sum;
end
    