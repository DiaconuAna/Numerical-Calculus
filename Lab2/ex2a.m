% plot Chebyshev polynomials T1, T2, T3
% t in [-1,1]
% T_n(t) = cos(n arccos(t))
x = -1:0.01:1;

hold on;

T1=cos(1.*acos(x));
plot(x, T1, 'r*');

T2=cos(2.*acos(x));
plot(x, T2, 'g-');

T3=cos(3.*acos(x));
plot(x, T3, 'b+');