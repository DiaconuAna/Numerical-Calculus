format longG

f = @(x) sin(x.^2);

disp(gaussian_quadrature(f, 2, @jacobi_legendre, 'Legendre'))
disp(gaussian_quadrature(f, 8, @jacobi_legendre, 'Legendre'))