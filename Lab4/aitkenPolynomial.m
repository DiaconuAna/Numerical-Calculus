% aitken polynomial

% P_(i,0) = f(x_i)
% P_i,j+1 = (x-x_j) * P_i,j - (x-x_i) * P_j,j / (x_i - x_j)

function p = aitkenPolynomial(x, y, a)
    error = 1e-3;
    n = length(x);
    
    ak = zeros(n, n);
    ak(:, 1) = y'; % first column - values of x
    
    for i = 1:n
        for j = 1:i-1
            n1 = 1/(x(i) - x(j));
            n2 = ak(i, j)*(a - x(j)) - (a - x(i))*ak(j,j);
             ak(i, j+1) = n1*n2;
        end
        % stopping criterion
        if i > 1 && abs(ak(i, i) - ak(i-1, i-1)) <= error
            p = ak(i,i);
            disp(i);
            return
        end
    end
end
