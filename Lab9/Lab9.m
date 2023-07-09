f = @(x) sin(x.^2);

n1 = 2; 
gaussian_quadrature(f, n1, @jacobi_legendre, 'Legendre')
gaussian_quadrature(f, n1, @jacobi_hermite, 'Hermite')


n2 = 8;
% gaussian_quadrature(f, n2, @jacobi_legendre, 'Legendre')