function J_T = jacobi_chevysev1(m)
    J_T = zeros(m);
    % Chebyshev coefficients
    % alpha_k = 0 => main diagonal stays the same
    % beta_0 = 1/2
    % beta_k = k/2, k>=1
    beta = zeros(m, 1);
    
    beta(1) = 1/2;
    J_T(1,2) = sqrt(1/2);
    J_T(2,1) = sqrt(1/2);
    
    for k = 2:m-1
        beta(k) = 1/4;
        J_T(k, k+1) = sqrt(beta(k));
        J_T(k+1, k) = J_T(k, k+1);
    end
    return;
end
