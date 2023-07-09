function [L,U,P] = LUP(A)
    n = size(A, 1);
    U = A;
    L = zeros(n); P = eye(n);
    for p = 1:n-1
        % determine position of pivot 
        % largest element (in absolute value) in that column - below main
        % diagonal
        % [max_value, max_index] = max(A(row_index, :));
        [~, q] = max(abs(A(p:n, p)));
        q = q + p - 1; % initial q is the index from the vector of values under main diagonal
        % we need the position in the entire matrix
        
        % perform interchanging of rows, if necessary
        if (p ~= q)
            U([p, q], :) = U([q, p], :);
            P([p,q], :) = P([q,p],:);
            L([p,q], :) = L([q,p],:);
        end
        
        % make zeros under main diagonal
        for i = p+1:n
            const = U(i,p)/U(p,p);
            % R_i - const * R_p
            U(i, p:n) = U(i, p:n) - const * U(p, p:n);
            L(i,p) = const;
        end
        for i = 1:n
            L(i,i) = 1;
        end
    end
end