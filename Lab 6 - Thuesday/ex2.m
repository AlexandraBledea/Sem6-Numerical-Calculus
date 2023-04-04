printf("== Exercise 2\n")
[x,y] = ginput(5);
a = min(x);
b = max(x);

xx = a : 0.01 : b;

spline_natural = csape(x, y, 'variational');
natural = fnval(spline_natural, xx);

hold on;
plot(x, y, '*r')
plot(xx, natural , 'g')
hold off;



