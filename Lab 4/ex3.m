hold on;

x = 0 : 0.01 : 6;
y = exp(sin(x));

plot(x, y, '-b');

x_equi = linspace(0, 6, 13);
y_equi = exp(sin(x_equi));

plot(x_equi, y_equi, 'xg');

result = zeros(1, length(x));

for i = 1:length(x)
  result(i) = newtonForAValue(x_equi, y_equi, x(i))
endfor

plot(x, result, '-r');

