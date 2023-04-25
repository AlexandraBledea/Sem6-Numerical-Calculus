printf("==Exercise 2\n")

f = @(x) exp(-x.^2);
a = 0;
b = 1;
err = 1e-6;  % Desired error tolerance

n = 100;  % Initial number of subintervals
I = adaptive_quadratures_rectangle(f, a, b, err, n);
disp(['Approximation rectangle: ', num2str(I, '%.8f')]);

# Correct value: 0.74682

n = 10;  % Initial number of subintervals
I = adaptive_quadratures_simpson(f, a, b, err, n);
disp(['Approximation simpson: ', num2str(I, '%.8f')]);


n = 1200;  % Initial number of subintervals
I = adaptive_quadratures_trapezoidal(f, a, b, err, n);
disp(['Approximation trapezoidal: ', num2str(I, '%.8f')]);

