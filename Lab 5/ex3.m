printf("== Exercise 3\n")


x1 = -5 : 0.01 : 5;
y1 = sin(2 .* x1);

x2 = linspace(-5, 5, 15);
y2 = sin(2 .* x2);
yy2 = 2 .* cos(2 .* x2);

plot(x1, y1, 'rx');

hold on;

double_x2 = DoubleVector(x2);
first_2 = FirstRowDivDiff(double_x2, y2, yy2);

result = zeros(1, length(x1));

for i = 1 : length(x1)

  result(i) = Hermite(double_x2, y2, first_2, x1(i));

endfor
  plot(x1, result, 'b.');





