f = @(x) 1./(2+ cos(x));
a = 0;
b = 2*pi;
n = 4;

romberg(f, a, b, n)