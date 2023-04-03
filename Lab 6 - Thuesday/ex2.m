printf("== Exercise 2\n")
[x,y] = ginput(5);
a = min(x);
b = max(x);

xx = a : 0.01 : b;

p = spline(x, y, xx);

hold on;
plot(x, y, '*r')
plot(xx, p, 'g')
hold off;



