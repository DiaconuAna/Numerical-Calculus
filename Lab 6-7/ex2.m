% ginput - 5 arbitrary points
% plot the points and the graph of a cubic natural spline function that
% passes through all of the given points

[x,y] = ginput(5)
a = min(x);
b = max(x);

t = linspace(a,b,50); % function domain
p = csape(x,y, 'variational');

hold on
plot(x, y, '*r')
plot(t, fnval(p, t), 'g') % plot polynomial p on points in t
hold off