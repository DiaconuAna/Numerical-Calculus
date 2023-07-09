% 3. f :[0, 6] -> R, f(x) = e^(sin(x))
% 13 equidistant interpolation points
% plot the interpolation points - the function f - the Newton Interpolation
% polynomial

% the function
f = @(x)(exp(sin(x)));

% the 13 equidistant points
x = linspace(0, 6, 13);

y = f(x);

% plot the interpolation points
plot(x, f(x), 'g*');

hold on

xx = 0:0.1:6;

N = newtonPolynomial(x, y, xx);

% plot the function
plot(xx, f(xx), 'b');
% plot the newton polynomial
hold on
plot(xx, N, 'r+');

