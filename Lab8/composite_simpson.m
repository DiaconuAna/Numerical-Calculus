function I = composite_simpson(f, a, b, n)
    h = (b-a)/n;
    S0 = f(a) + f(b);
    S1 = 0;
    S2 = 0;
    
    % x_i = a + i*h
    % x_2i = a + 2*i*h
    % x_(2i-1) = a + (2*i+1)*h
    
    % S0 - f(a) + f(b)
    % S1 - f(x1) + f(x3) + ... + f(x_n-1)
    % S2 - f(x2) + f(x4) + ... + f(x_n-2)

    
    for i = 1:n/2
        x_odd = a + (2*i-1)*h;
        S1 = S1 + f(x_odd);
        if i == n/2
            continue
        end
        x_even = a + 2*i*h;
        S2 = S2 + f(x_even);
    end
    I = h/3 * (S0 + 4*S1 + 2*S2);
end
