printf("==Exercise 2\n");

x = [1 2];
y = [0 0.6931]
yy = [1 0.5]

xx = 1.5;

double_x = DoubleVector(x);
first = FirstRowDivDiff(double_x, y, yy);
result = Hermite(double_x, y, first, xx);

printf("Hermite_ln(%f)=%f\n", xx, result);
printf("|ln(%f) - Hermite_ln(%f)| = %f\n", xx, xx, abs(log(1.5) - result));
