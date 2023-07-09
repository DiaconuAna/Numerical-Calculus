function J_l = jacobi_legendre(m)
    J_l = zeros(m);
    % Legendre coefficients
    % alpha_k = 0 => main diagonal stays the same
    % beta_0 = 2
    % beta_k = (4-k^(-2))^(-1), k>=1
    beta = zeros(m, 1);
    
    for k = 1:m-1
        beta(k) = (4-k^(-2))^(-1);
        J_l(k, k+1) = sqrt(beta(k));
        J_l(k+1, k) = J_l(k, k+1);
    end
    return;
end
