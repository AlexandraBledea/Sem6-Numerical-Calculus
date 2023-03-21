hold on;

x = -5 : 0.1 : 5;
y = sin(x);

plot(x, y, '-b');

x_equi = linspace(-5, 5, 20);
y_equi = sin(x_equi);

plot(x_equi, y_equi, 'xg');

result = zeros(1, length(x));

for i = 1:length(x)
  result(i) = aitkens(x_equi, y_equi, x(i), 0.001)
endfor

plot(x, result, '-r');

