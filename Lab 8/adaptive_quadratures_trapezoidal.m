printf("Adaptive Quadratures Trapezoidal")

function I = adaptive_quadratures_trapezoidal(f, a, b, err, n)

  I1 = composite_trapezoidal(f, a, b, n);
  I2 = composite_trapezoidal(f, a, b, 2*n);

  if abs(I1 - I2) < err / 15
    I = I2;
    return;
  else
    I = adaptive_quadratures_trapezoidal(f, a, (a+b)/2, err, n) + adaptive_quadratures_trapezoidal(f, (a+b)/2, b, err, n);
  endif
endfunction

