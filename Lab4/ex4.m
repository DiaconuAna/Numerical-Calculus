% approx sqrt(115) with precision eps = 10^(-3)

x = [64 81 100 121 144 169 196];
y = [8 9 10 11 12 13 14];

a = 115;

result = aitkenPolynomial(x, y, a);
error = abs(result - sqrt(a));

disp(result);
disp(error);