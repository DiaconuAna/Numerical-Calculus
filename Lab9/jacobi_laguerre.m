function J_L = jacobi_laguerre(m)
    J_L = zeros(m);
    % Chebyshev coefficients
    % alpha_k = 0 => main diagonal stays the same
    % beta_k = k/2, k>=1
    beta = zeros(m, 1);
    alpha = zeros(m, 1);
    for k = 0:m-1
        alpha(k+1) = 2*k + 2;
        J_L(k+1,k+1) = alpha(k+1);
    end
        
    for k = 1:m-1
        beta(k) = k*(k+1);
        J_L(k, k+1) = sqrt(beta(k));
        J_L(k+1, k) = J_L(k, k+1);
    end
    return;
end
