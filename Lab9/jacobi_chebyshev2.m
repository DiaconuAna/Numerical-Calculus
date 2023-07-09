function J_Q = jacobi_chebyshev2(m)
    J_Q = zeros(m);
    % Hermite coefficients
    % alpha_k = 0 => main diagonal stays the same
    % beta_0 = pi/2
    % beta_k = 1/4, k>=1
    beta = zeros(m, 1);
    
    for k = 1:m-1
        beta(k) = 1/4;
        J_Q(k, k+1) = sqrt(beta(k));
        J_Q(k+1, k) = J_Q(k, k+1);
    end
    return;
end
