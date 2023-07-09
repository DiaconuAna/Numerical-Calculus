% w_i is the barycentric weight
% w_i = 1/product(j=0,n,j!=i)(x_i-x_j)

function w = findWeight(i, x)
    n = length(x);
    p = 1;
    for j = 1:n
        if i ~=j % i!=j
            p = p*(x(i) - x(j));
        end
    end
    w = 1/p;
end