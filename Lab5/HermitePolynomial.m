% Hermite interpolation polynomial

% x = node interpolation vector
% f = f(x) 
% df = f'(x)
% X = vector of elements to approximate
function H = HermitePolynomial(x, f, df, X)
    l = length(x);
    % double the nodes from x
    z = zeros(1, 2*l);
    z(1:2:end) = x;
    z(2:2:end) = x;
    % and the values of f : H_(2m+1) = f(x_i)
    ff = zeros(1, 2*l);
    ff(1:2:end) = f;
    ff(2:2:end) = f;
    
    % matrix of the divided differences table
    m = zeros(2*l, 2*l);
    % first column takes f(x_0), f(x_0), f(x_1), f(x_1), ... , f(x_m),
    % f(x_m)
    % => identical values, two by two - as stored in ff
    m(:, 1) = ff';
    % 2nd column: odd positions contain the values of the derivatives of f
    % other elements => divided differences
    m(1:2:end,  2) = df';
    m(2:2:2*l-1,2) = (f(2:l) - f(1:l-1))./(x(2:l) - x(1:l-1));
    % and the rest of the table - from column 3 to 2*l
    for col = 3:2*l
        for i = 1:2*l-col+1
            m(i, col) = (m(i+1, col-1)-m(i, col-1))/(z(i+col-1) - z(i));
        end
    end
    
    % the Hermite interpolation polynomial is written in a similar manner
    % to Newton interpolation polynomial, but for 2m+1 nodes
    % H_(2m+1)f(x) = f(z_0) + sum_(i=1)^(2m+1)(x-z_0)...(x-z_i)*D_i f(z_0)
    lx = length(X);
    p = ones(lx, 1);
    s = m(1,1) * ones(lx, 1); %f(z_0) = m(1, 1)
    
    for j = 1:lx
        for i = 1:2*l-1
            p(j) = p(j) * (X(j) - z(i)); % gradually building (x-z_0)*(x-z_1)..
            s(j) = s(j) + p(j)*m(1, i+1);
        end
    end
    
    H = s';
end
    