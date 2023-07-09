% exercise 2
% f(x) = ln(x)
% f(1.5) = ?
% f(1) = 0; f'(1) = 1
% f(2) = 0.6931; f'(2) = 0.5
% absolute approximation error

x = [1 2];
f = [0 0.6931];
df = [1 0.5];
X = 1.5;

% with the Newton's divided difference form
H = HermitePolynomial(x, f, df, X);

disp(H);
disp(abs(log(X) - H));

% with the cubic interpolation
 h00 = (1+2*(X - x(1))/(x(2)-x(1)))*((x(2)-X)/(x(2)-x(1)))^2;
 h10 = (1+2*(x(2)-X)/(x(2)-x(1)))*((X - x(1))/(x(2)-x(1)))^2;
 h01 = ((X - x(1)) * (x(2)-X)^2) / (x(2)-x(1))^2;
 h11 = (-1) * ((X - x(1))^2* (x(2)-X)) / (x(2) - x(1))^2;
 
 H_cubic = h00*f(1) + h10 * f(2) + h01 * df(1) + h11 * df(2);
 disp(H_cubic);
disp(abs(log(X) - H_cubic));