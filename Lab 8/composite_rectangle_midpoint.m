printf("Composite Rectangle Mid-Point rule")

function I = composite_rectangle_midpoint(f, a, b, n)
  h = (b - a)/n;
  sum = 0;

  for i = 1 : n
    sum = sum + f(a + (i - 1/2) * h);
  endfor

  I = h * sum;

endfunction

