% plot the first n Chebyshev polynomials of the first kind
% recurrence formula
% T_(n+1)(x) = 2*x*T_n(x) - T_(n-1)(x), x in [-1, 1]
% T_0(x) = 1, T_1(x) = x
c(5)
function c(N)
    hold on;
    x = -1:0.01:1;
    for n=1:N
        t = chebyshev_formula(n,x);
        plot(x, t);
    end
end