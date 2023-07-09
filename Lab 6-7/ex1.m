% csape - Cubic spline interpolation with end conditions
% fnval - Evaluate spline function
x = [0, pi / 2, pi, (3 * pi) / 2, 2 * pi];
y = sin(x);

% value of the function in pi/4
actual = sin(pi/4)

% value of cubic natural spline in pi/4
t = csape(x, y, 'variational');
natural = fnval(t, pi / 4)

% value of cubic clamped spline function in pi/4
t1 = csape(x, [1, y, 1], 'complete');
clamped = fnval(t1, pi / 4)

% plot the graphs
hold on
plot(x,y,'g*') % function graph
fplot(@(X) ppval(t, X), [0, 2 * pi],'k') % cubic natural spline graph
fplot(@(X) ppval(t1, X), [0, 2 * pi],'r') % cubic clampled spline function
hold off

