format longG

f = @(x) sin(x);
 
disp(gaussian_quadrature(f, 2, @jacobi_laguerre, 'Laguerre'))
disp(gaussian_quadrature(f, 8, @jacobi_laguerre, 'Laguerre'))
