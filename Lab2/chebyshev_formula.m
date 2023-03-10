% T_(n+1)(x) = 2*x*T_n(x) - T_(n-1)(x), x in [-1, 1]
% T_0(x) = 1, T_1(x) = x

function c_pol = chebyshev_formula(n, x)
    if n == 0
        c_pol = 1;
    elseif n == 1
        c_pol = x;
    else
        c_pol = 2*x.*chebyshev_formula(n-1, x) - chebyshev_formula(n-2, x);
    end
end