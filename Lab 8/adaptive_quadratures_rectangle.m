printf("Adaptive Quadratures Rectangle")

function I = adaptive_quadratures_rectangle(f, a, b, err, n)

  I1 = composite_rectangle_midpoint(f, a, b, n);
  I2 = composite_rectangle_midpoint(f, a, b, 2*n);

  if abs(I1 - I2) < err
    I = I2;
    return;
  else
    I = adaptive_quadratures_rectangle(f, a, (a+b)/2, err, n) + adaptive_quadratures_rectangle(f, (a+b)/2, b, err, n);
  endif
endfunction

