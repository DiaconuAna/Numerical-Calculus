% ex.3 - graphics of the function
% f:[0, 10] -> R, f(x) = (1 + cos(pi*x))/(1+x)
% graphic of the Lagrange interpolation polynomial that interpolates the
% function f at 21 equally spaced points in [0, 10]

f = @(t)(1 + cos(pi * t))./(1+t);

% use linspace to generate a linear vector - row of n evenly spaced point
x = linspace(0, 10, 21);
xx = linspace(0, 10, 100);
% x = 0:0.1:10;
y = f(x);

yx = f(xx);
plot(xx,yx, "r");

hold on;
xx = linspace(0, 10, 100);
L = BarycentricInterpolation(x, y, xx);
plot(xx, L, "g");