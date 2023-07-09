function [x, nit] = jacobi(A, b, x_0, err, maxnit)
    
    n = size(A, 1);
    x = x_0;
    nit = 0;
    
    while nit <= maxnit
        for i = 1:n
            sum = 0;
            for j = 1:n
                if (i~=j)
                    sum = sum + A(i,j) * x_0(j);
                end
            end
            x(i) = (b(i) - sum) / A(i,i);
        end
    
        if norm(x - x_0) < err
            fprintf("Number of iterations (Jacobi): %d\n", nit);
            return
        end
        
        x_0 = x;
        nit = nit+1;
    end
        
    disp("Maximum number of iterations has been reached");
end