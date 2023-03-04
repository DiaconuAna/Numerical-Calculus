a=[1,2,13;4,5,6;7,8,9];
b=[4,8,12;-1,0,5;2,3,8];
[m,n]=size(a); 
t=b';     % print is done automatically when ; is not placed at end of line
c=a*b;
d=a.*b;   % element wise multiplication
e=a.^2;   
size(a);    % [number of rows, number of columns]
length(a);  % max(size(a))
m=mean(a);  % for each column
m1=mean(a,2); % for each row
g=geomean(a);
s=sum(a);
s1=sum(a,2);
p=prod(a);
p1=prod(a,2);
max(a);    % maximum for each column
max(a,2);  % element wise - maximum between each element and 2
max(a');   % maximum for each row
min(a);
diag(a);
m>2;   % compare each element with 2 and return a logical array
a>b;    %
inv(b);   % inverse
det(b);   % determinant
f=abs(b);
b=[16 15 24]';
x=a\b;          %solution of ax=b
triu(a);        %fill bellow main diag /w 0s - upper triangular
tril(a);        %fill above main diag /w 0s - lower triangular
m=[2 3 5; 7 11 13; 17 19 23];  % important for future classes
m(2,1);
m(:,1);         %all rows of column 1 - select the first column
m(2,:);         %all columns of line 2  - select the 2nd row
m(2,1 : 2);     %line 2, all but last column (columns from 1 to 2)
m(2,2 : end);   %second row, all but rst column
m(2 : 3,2 : 3); %a submatrix

eye(8);         %identity
eye(5,7);       %last 2 colums are 0s
zeros(5,7);     %only 0s (must be a square matrix?)
ones(7,8);      %only 1s

M=magic(4);
sum(M);
sum(M,2);
sum(diag(M));
sum(diag(flip(M)));