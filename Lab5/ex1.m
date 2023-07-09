% exercise 1
% Data about a moving car => estimate position and speed of car when time
% is t = 10

time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];
t = 10;

H = HermitePolynomial(time, distance, speed, t);
H_limit = HermitePolynomial(time, distance, speed, 10.000001);
disp(H);

x = 10.0000001;

(HermitePolynomial(time, distance, speed, x) - H)/(x-10)