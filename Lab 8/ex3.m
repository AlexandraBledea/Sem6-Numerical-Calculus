printf("==Exercise 3\n")

f = @(x) 1./(2 + cos(x));
a = 0;
b = 2*pi;
m = 10;
eps = 1e-8;
I = romberg_trapezoidal(f, a, b, m, eps);

disp(['Approximation: ', num2str(I, '%.8f')]);
disp(['Exact value: ', num2str(2*pi/sqrt(3), '%.8f')]);
