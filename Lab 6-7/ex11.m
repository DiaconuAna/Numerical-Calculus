t = [0,10,20,30,40,60,80,100];
p = [0.0061,0.0123,0.0234,0.0424,0.0738,0.1992,0.4736,1.0133];

% a. Best liniar least squares polynomial

% Lecture 6 - 3.8
A = [sum(t.^2), sum(p); sum(t), length(t)];
B = [sum(t.*p); sum(p)];

X = linsolve(A,B)
fprintf('Polynomial =%f x + %f\n',X);

% use it to approximate pressure P at T = 45 degrees
approx = polyval(X, 45)

% b. other 2 least squares approx for given data, for 2 different degrees
% of polynomials

% p = polyfit(x,y,n) returns the coefficients for a polynomial p(x) of 
% degree n that is a best fit (in a least-squares sense) for the data in y.
% The coefficients in p are in descending powers, and the length of p is n+1

p1 = polyfit(t, p, 2);
fprintf("Polynomial 1: %f * x^2 + %f * x + %f \n", p1);

p2 = polyfit(t, p, 3);
fprintf("Polynomial 2: %f * x^3 + %f * x^2 + %f * x + %f \n", p2);

% Find their values for T = 45
p1_approx = polyval(p1, 45)
p2_approx = polyval(p2, 45)

% c. Compute in all three cases the approximation errors
% P(45) = 0.095848

exact_value = 0.095848;
error_a = abs(exact_value - approx)
error_b = abs(exact_value - p1_approx)
error_c = abs(exact_value - p2_approx)

% d. Plot the interpolation points, the 3 least squares approximants and
% the interpolation polynomial in the same figure

hold on
interpolation_polynomial = polyfit(t,p,7);
plot(t, p, 'b'); 

xx = [0:0.1:100];
plot(xx, polyval(X, xx), 'r-');
plot(xx, polyval(p1, xx), 'g-');
plot(xx, polyval(p2, xx), 'c-');
plot(xx, polyval(interpolation_polynomial, xx), 'm-');
