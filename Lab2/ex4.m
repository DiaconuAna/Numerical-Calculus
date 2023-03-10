% finite differences table
% h = 0.25
% xi = 1 + i*h, i = 0-6
% x0 = 1, x1 = 1.25 , ... , x6 = 2.5
% f(x) = sqrt(5x^2+1)
x1=1:0.25:2.5;
f1 = @(x1) sqrt(5*x1.^2+1);

display('Finite difference table');
display(buildTable(x1,f1));
function finite_difference = buildTable(x, f)
    n = length(x);
    % first column is f1 - the parameter f - becomes a column vector in the
    % table
    finite_difference = [f(x)', zeros(n, n-1)];
    for k=2:n
        for i = 1:n-k+1
            finite_difference(i,k) = finite_difference(i+1, k-1) - finite_difference(i, k-1); % recurrence formula for finite difference
        end
    end
    finite_difference = [x', finite_difference]; % do not want it to interfere with the past computations
end