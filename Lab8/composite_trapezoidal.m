function I = composite_trapezoidal(f, a, b, n)
    h = (b-a)/n;
    sum = 0;
    
    for i = 1:n-1
        xi = a + i * h;
        sum = sum + f(xi);
    end
    I = h/2 * (f(a) + 2*sum + f(b));
end
