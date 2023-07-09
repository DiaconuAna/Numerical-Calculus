% Lab4 - ex1
x = [1 1.5 2 3 4];
f = [0 0.17609 0.30103 0.47712 0.60206];
i = 10:35;
yi = i./10;

N = newtonPolynomial(x, f, yi);  % N_4f(y_i)
% interpolation error
E = max(abs(log10(yi) - N));
% approximate lg2.5 and lg3.25

disp(E)

disp(newtonPolynomial(x, f, 2.5));
disp(newtonPolynomial(x, f, 3.25));