function I = gaussian_quadrature(f, n, jacobi, poly_case)
    I = 0;
    m = 2*n-2;
    J = jacobi(m);
    [V, D] = eig(J);
    
    x_k = diag(D);
    a_k = zeros(m);
    
    if strcmp(poly_case, 'Legendre')
        beta_0 = 2;
    elseif strcmp(poly_case, 'Hermite')
        beta_0 = sqrt(pi);
    elseif strcmp(poly_case, 'Chebyshev1')
        beta_0 = pi;
    elseif strcmp(poly_case, 'Chebyshev2')
        beta_0 = pi/2;   
    elseif strcmp(poly_case, 'Laguerre')
        beta_0 = gamma(2);   
    end

    % and to compute the coefficients: A_k = beta_0 * v(1,k)^2
    for k = 1:m
        a_k(k) = beta_0 * V(1,k)^2;
        I = I + ( f(x_k(k)) * a_k(k));
    end
end