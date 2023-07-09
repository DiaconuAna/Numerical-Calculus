format longG

f = @(x) (x.^2);

disp(gaussian_quadrature(f, 2, @jacobi_chevysev1, 'Chebyshev1'))
disp(gaussian_quadrature(f, 8, @jacobi_chevysev1, 'Chebyshev1'))