printf("== Exercise 3\n")


x1 = -5 : 0.01 : 5;
y1 = sin(2 .* x1);

x2 = linspace(-5, 5, 15);
y2 = sin(2 .* x2);
yy2 = 2 .* cos(2 .* x2);

double_x2 = DoubleVector(x2);
first_2 = FirstRowDivDiff(double_x2, y2, yy2);
result = Hermite(double_x2, y2, first_2, x1);


plot(x1, y1, 'rx');

hold on;

plot(x1, result, 'b.');
