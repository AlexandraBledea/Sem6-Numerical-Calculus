% II Polynomials

% 1. Evaluate the polynomial
p = [2 -5 0 8]
X = 2
Y = polyval (p, X)

% 2. Find the roots of the polynomial
p = [1 -5 -17 21]
roots(p)

% III Graphs

%1.

% x = [0, 1] -> we define a very small step for the vector so we could obtain the interval
x = 0: 0.01 : 1;

% We add the dot before * because we don't want to multiply the vectors but to multiply the value from x
f = exp(10*x.*(x-1)).*sin(12*pi*x);

% Normal simple plot
plot(x, f);

% Like that we will have stars instead of dots.
plot(x, f, '*');

f1 = 3*exp(5*x.^2-1).*cos(12*pi*x);

plot(x, f1);


%2. Plot the epicycloid

t = 0: 0.01 : 10*pi;

a = 2;
b = 3;
x = (a+b).*cos(t) - b.*cos((a/b + 1).*t);
y = (a+b).*sin(t) - b.*sin((a/b+1).*t);
plot(x, y);


%3.
x = 0: 0.01 : 2*pi;
f1 = cos(x);
f2 = sin(x);
f3 = cos(2.*x);
plot(x,f1,x,f2,x,f3)

%4.
x1 = -1:0.01:0;
x2 = 0.01:0.01:1;

f1 = x1.^3+sqrt(1.-x1);
f2 = x2.^3-sqrt(1.-x2);

plot(x1,f1,x2,f2);

%5
x1 = 0:2:50;
x2 = 1:2:49;

f1 = x1/2;
f2 = 3*x2 + 1;

plot(x1,f1,'*',x2,f2,'*');


%6

a = 1/2
b = 1/(1 + a)
c = 1/(1 + b)
d = 1/(1 + c)
g = 1 + 1/(1 + d)


%7

[x,y]=meshgrid(-2:0.01:2, -4:0.01:4);
g = exp(-(x.-1/2).^2.+(y.-1/2).^2);

mesh(x,y,g)

