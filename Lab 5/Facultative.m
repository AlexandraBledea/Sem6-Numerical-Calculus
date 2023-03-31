printf("== facultative");

"ex 4."

x = [8.3 8.6];
y = [17.564892 18.50515];
yy = [3.116256 3.151762];


double_x = DoubleVector(x);
firstRow = FirstRowDivDiff(double_x, y, yy);
result = Hermite(double_x, y, firstRow, 8.4);


"ex 5."

f = @(x) (3 .* x .* exp(x) - exp(2 .* x));
f2 = @(x) (3 .* (exp(x) + exp(x) .* x) .- exp(2 .* x) .* 2);

"a)"


x1 = [1 1.05];
y1 = [f(1) f(1.05)];
yy1 = [f2(1) f2(1.05)]


double_x1 = DoubleVector(x1);
firstRow1 = FirstRowDivDiff(double_x1, y1, yy1);
result1 = Hermite(double_x1, y1, firstRow1, 1.03)

abs(f(1.03) - result1)



"b)"

x2 = [1 1.05 1.07];
y2 = [f(1) f(1.05) f(1.07)]
yy2 = [f2(1) f2(1.05) f2(1.07)]

double_x2 = DoubleVector(x2);
firstRow2 = FirstRowDivDiff(double_x2, y2, yy2);
result2 = Hermite(double_x2, y2, firstRow2, 1.03)

abs(f(1.03) - result2)

