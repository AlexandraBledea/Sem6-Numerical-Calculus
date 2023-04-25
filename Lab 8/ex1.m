printf("==Exercise 1\n")

f = @(x) 1./(1 + x);
a = 0;
b = 1;

n = 800;
I = composite_trapezoidal(f, a, b, n);
disp(['Composite trapezoidal: ', num2str(I, '%.3f')]);


n = 4;
I = composite_simpson(f, a, b, n);
disp(['Composite simpson: ', num2str(I, '%.3f')]);


n = 13;
I = composite_rectangle_midpoint(f, a, b, n);
disp(['Composite rectangle mid-point: ', num2str(I, '%.3f')]);



