function J_H = jacobi_hermite(m)
    J_H = zeros(m);
    % Hermite coefficients
    % alpha_k = 0 => main diagonal stays the same
    % beta_0 = sqrt(pi)
    % beta_k = k/2, k>=1
    beta = zeros(m, 1);
    
    for k = 1:m-1
        beta(k) = k/2;
        J_H(k, k+1) = sqrt(beta(k));
        J_H(k+1, k) = J_H(k, k+1);
    end
    return;
end
