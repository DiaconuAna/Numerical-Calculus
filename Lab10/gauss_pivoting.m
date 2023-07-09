function X = gauss_pivoting(A, B)
    n = size(A, 1);
       X = zeros(1,n);
    for p = 1:n-1
        % determine position of pivot 
        % largest element (in absolute value) in that column - below main
        % diagonal
        % [max_value, max_index] = max(A(row_index, :));
        [~, q] = max(abs(A(p:n, p)));
        q = q + p - 1; % initial q is the index from the vector of values under main diagonal
        % we need the position in the entire matrix
        
      if(A(p,q)==0)
          disp("Error");
          return;
      end
        
        % perform interchanging of rows, if necessary
        if (p ~= q)
            A([p, q], :) = A([q, p], :);
            B([p, q]) = B([q, p]);
        end
        
        % make zeros under main diagonal
        for i = p+1:n
            const = A(i,p)/A(p,p);
            % R_i - const * R_p
            B(i) = B(i) - const * B(p);
            A(i, p:n) = A(i, p:n) - const * A(p, p:n);
        end
    end
    
    if(A(n,n)==0)
        disp("Error");
        return;
    end
    X = backward_substitution(A,B);
end