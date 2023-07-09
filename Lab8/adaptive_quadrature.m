%Algorithm 3.1. [Adaptive quadrature]
%function I = adquad(f, a, b, ε, met,m)
%I1 = met(f, a, b,m);
%I2 = met(f, a, b, 2m);
%if |I1 − I2| < ε % success
    %I = I2;
    %return
%else % recursive subdivision
    %I = adquad(f, a, a+b/, ε, met,m) + adquad(f, a+b/2 , b, ε, met,m);
%end
%end

function I = adaptive_quadrature(f, a, b, error, method, m)
    I1 = method(f, a, b, m);
    I2 = method(f, a, b, 2*m);
    
    if abs(I1-I2) < error
        I = I2;
        return;
    else
        I = adaptive_quadrature(f, a, (a+b)./2, error, method, m) + adaptive_quadrature(f, (a+b)./2, b, error, method, m);
    end
end