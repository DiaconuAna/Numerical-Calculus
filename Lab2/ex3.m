% 3. P_n(x) = sum(k=0->n)x^k/k!, n=1,2,3,4,5,6, x in [-1,3]
hold on;
% n = 0
T = @(x) 1;
fplot(T, [-1, 3]);

for n=1:6
    T = @(x)T(x) + (x.^n)/factorial(n);
    fplot(T, [-1, 3]);
end
        