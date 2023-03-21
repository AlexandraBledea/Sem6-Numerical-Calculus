x = [1, 1.5, 2, 3, 4];
y = [0  0.17609  0.30103  0.47712  0.60206];

printf("lg(%f) = %f\n", 2.5, newtonForAValue(x, y, [2.5]));
printf("lg(%f) = %f\n", 3.25, newtonForAValue(x, y, 3.25));

maximum = 0;

for i = 10:35
  value = newtonForAValue(x, y, i/10);
  err = abs(log10(i/10) - value);
  if (err > maximum)
    maximum = err;
  endif
endfor

printf("error = %f\n", maximum);



