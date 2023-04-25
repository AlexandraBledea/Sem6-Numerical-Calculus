printf("Adaptive Quadratures Simpson")

function I = adaptive_quadratures_simpson(f, a, b, err, n)

  I1 = composite_simpson(f, a, b, n);
  I2 = composite_simpson(f, a, b, 2*n);

  if abs(I1 - I2) < err
    I = I2;
    return
  else
    I = adaptive_quadratures_simpson(f, a, (a+b)/2, err, n) + adaptive_quadratures_simpson(f, (a+b)/2, b, err, n);
  endif
endfunction


