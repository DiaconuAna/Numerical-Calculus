% 1. Approximate ln 2 with 3 correct decimals, using the composite rectangle, trapezoidal
% and Simpson’s rule, with the appropriate number of subintervals.

f = @(x) 1./(x+1);
a = 0;
b = 1;

n_rectangle = 13;
n_trapezoidal = 19;
n_simpson = 6;

disp("Composite rectangle")
composite_rectangle(f,a,b,n_rectangle)
disp("Composite trapezoidal")
composite_trapezoidal(f,a,b,n_trapezoidal)
disp("Composite Simpson")
composite_simpson(f,a,b,n_simpson)