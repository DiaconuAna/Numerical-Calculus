f = @(x) exp(-x.^2);
a = 0;
b = 1;
err = 1e-4;
n = 50;

disp("Composite rectangle")
adaptive_quadrature(f, a, b, eps, @composite_rectangle, n)
disp("Composite trapezoidal")
adaptive_quadrature(f, a, b, eps, @composite_trapezoidal, n)
disp("Composite Simpson")
adaptive_quadrature(f, a, b, eps, @composite_simpson, n)