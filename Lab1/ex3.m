% II. Polynomials
% 1. Evaluate the polynomialp(x) = 2x^3-5x^2+ 8inx= 2:(Use:polyval):

p=[2 -5 0 8];
polyval(p,2)

% 2. Find the roots of the polynomialp(x) =x^3-5x^2-17x+21:(Use:roots):

p = [1 -5 -17 21];
roots(p)

% III. Graphs

% 1. Plot the functions
%f: [0;1]->R;   f(x) =e^(10*x*(x-1))*sin 12pix;
x=0:0.01:1;
f=exp(10*x.*(x-1)).*sin(12*pi*x);
plot(x,f,'*');
%hold on
% f: [0;1]->R;   f(x) = 3e^(5x2-1)cos 12pix:
f2=3*exp(5*x.^2-1).*cos(12*pi*x);
plot(x,f2,'b');
% hold off;

% Plot the epicycloid

a=2;
b=13;
x=0:0.01:10*pi;
f3=(a+b)*cos(x)-b*cos((a/b+1)*x);
f4=(a+b)*sin(x)-b*sin((a/b+1)*x);
plot(f3,f4,'b');

% Plot, on a single graph, the functions:f1; f2; f3: [0;2]!R; f1(x) =cosx; f2(x) = sinx; f3(x) = cos 2x:
clc
x=0:0.01:2*pi;
f5=cos(x);
f6=sin(x);
f7=cos(2*x);
plot(x,f5,'*');
hold on
plot(x,f6,'r');
plot(x,f7,'g');
hold off

% Plot the graph of the function
% f(x) = x^3 + sqrt(1-x), -1<=x<=0
% f(x) = x^3 - sqrt(1-x), 0<x<=1

x1=-1:0.01:0;
fx1 = x1.^3 + sqrt(1-x1);
x2=0.01:0.1:1;
fx2 = x2.^3 - sqrt(1-x2);
plot(x1,fx1,'*r',x2,fx2,'+g');

% exercise 5
x1=0:2:50;
x2=1:2:49;
fx1=x1./2;
fx2=3*x2+1;
plot(x1,fx1,'*r',x2,fx2,'+g');

% exercise 7
x = -2:0.01:2;
y = -4:0.01:4;
[X,Y] = meshgrid(x,y);
g = exp(-((X-1/2).^2+(Y-1/2).^2));
% mesh(X,Y,g);

% exercise 6
% gr = 1;
% gr = random(7)
% function gr = random(n)
%     if n==0
%         gr=1;
%     else
%         gr=gr + 1/(1+random(n-1));
%     end
% end

f=1;
g=1;

for i = 1:5
  f = 1/(1+f);
  g = 1+f;
end

g

