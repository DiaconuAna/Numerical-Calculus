% exercise 3
% graph of f(x) = sin(2x) - x in [-5, 5]
% graph of corresponding Hermite interpolation polynomial for 15
% equidistant nodes in [-5, 5]

x = linspace(-5, 5, 15);
f = sin(2*x);
df = 2*cos(2*x);
X = linspace(-5, 5, 5000);
H = HermitePolynomial(x,f,df,X);

hold on

plot(X, sin(2*X), 'g+');
plot(X, H, 'b');
