printf("== Exercise 1\n")

axis([0 3 0 5]);
[x, y] = ginput(10);

[x, idx] = sort(x)
y = y(idx);

p = polyfit(x, y, 2);

hold on

t = 0 : 0.01 : 3;
plot(x, y, 'r*')
plot(t, polyval(p, t), 'k-')'

hold off

