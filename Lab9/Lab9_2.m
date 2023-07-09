format longG

f = @(x) 1;
 
disp(gaussian_quadrature(f, 2, @jacobi_chebyshev2, 'Chebyshev2'))
disp(gaussian_quadrature(f, 8, @jacobi_chebyshev2, 'Chebyshev2'))
