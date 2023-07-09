format longG

f = @(x) 1;
 
disp(gaussian_quadrature(f, 2, @jacobi_hermite, 'Hermite'))
disp(gaussian_quadrature(f, 8, @jacobi_hermite, 'Hermite'))
