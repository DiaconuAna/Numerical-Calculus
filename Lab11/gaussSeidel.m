function [x, nit] = gaussSeidel(A, b, x_0, err, maxnit)
    n = size(A, 1);
    x = x_0;
    nit = 0;
    
    while nit <= maxnit
        for i = 1:n
            s1 = 0; s2 = 0;
            for j = 1:i-1 % the info we already know
                s1 = s1 + A(i,j) * x(j);
            end
            % and what we don't
            for j = i+1:n
                s2 = s2 + A(i,j) * x_0(j);
            end
            x(i) = (b(i) - s1 - s2) / A(i,i);
        end
        
         if norm(x - x_0) < err
            fprintf("Number of iterations (Gauss Seidel): %d\n", nit);
            return
        end
        
        x_0 = x;
        nit = nit+1;
    end
    
    disp("Maximum number of iterations has been reached");
end