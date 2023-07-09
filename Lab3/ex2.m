% approx sqrt(115) with Lagrange interpolation, using the known value for
% three given nodes
% f(x) = y, f(x) = sqrt(x)
% sqrt(115) = 10.723...

% x = [81, 169, 400];
% y = [9, 13, 20];
% ans = 10.6327

% x = [81, 169, 225];
% y = [9, 13, 15];
% ans = 10.6696;

% x = [100, 121, 169];
% y = [10, 11, 13];
% ans = 10.7220

x = [100, 121, 144];
y = [10, 11, 12];
xx = [115];

BarycentricInterpolation(x, y, xx)