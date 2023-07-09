% second barycentric formula
% L_n f(x) = S1/S2
% S1 = sum from i=0,n w_i/(x-x_i)*f_i
% S2 = sum from i=0,n w_i/(x-x_i)
% where w_i is the barycentric weight
% w_i = 1/product(j=0,n,j!=i)(x_i-x_j)

function l = BarycentricInterpolation(x,y,xx)
    m = length(x);
    P = zeros(1,m);
    N = length(xx);
    l = zeros(1,N);
    for j = 1:N 
        s1 = 0;
        s2 = 0;
        for i = 1:m
            P(i) = findWeight(i, x); % w_i
            s1 = s1 + P(i)*y(i)/(xx(j) - x(i)); % S1
            s2 = s2 + P(i)/(xx(j) - x(i)); % S2
        end
        l(j) = s1/s2;
    end
end