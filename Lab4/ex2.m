x = [1 2 3 4 5];
f = [22 23 25 30 28];

% a. Newton Interpolation => approx how many pounds are expected from a plot
% to which 2.5 pounds of fertilizer had been applied

yi = [2.5];

N = newtonPolynomial(x, f, yi);

disp(N);

% b. Plot the data given in table + Newton interpolation polynomial

plot(x, f, 'r+');

hold on

xx = 1:0.01:5;
toPlot = newtonPolynomial(x, f, xx);
plot(xx, toPlot, 'g');