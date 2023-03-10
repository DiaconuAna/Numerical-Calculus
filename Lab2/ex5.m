% finite differences table
% x0 = 2, x1 = 4, x2 = 6, x3 = 8
% f0 = 4, f1 = 8, f2 = 14, f3 = 16
x1 = [2 4 6 8];%2:2:8;
f1 = [4 8 14 16];

display('Finite difference table');
display(buildTable(x1,f1));
function finite_difference = buildTable(x, f)
    n = length(x);
    % first column is f1 - the parameter f - becomes a column vector in the
    % table
    finite_difference = [f', zeros(n, n-1)];
    for k=2:n
        for i = 1:n-k+1
            finite_difference(i,k) = (finite_difference(i+1, k-1) - finite_difference(i, k-1))/(x(i+k-1)-x(i)); % recurrence formula for finite difference
        end
    end
    finite_difference = [x', finite_difference]; % do not want it to interfere with the past computations
end