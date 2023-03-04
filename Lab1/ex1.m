
a=[1,2,3];  %line vector - [1,2,3]' - for transpose
b=[1;2;3];  %column vector
c=a*b;
d=[4 5 6];  %transpose vector of b
%d=b';
e=a.*d;   % element-wise multiplication a[1]*b[1], a[2]*b[2] etc.
f=a.^2;
g=a.^d;
v=1:6;
w=2:3:10;   %the starting point:step:final point
y=10:-1:0;
exp(a);
exp(1);     %number e
sqrt(a)
%disp(sqrt(a));
m=max(a)
[m,k]=max(a) % m - maximum, k - position of max, a - vector
h=[-2 -9 8]
k=abs(h)
mean(a)
geomean(a)
sum(a)
prod(a)