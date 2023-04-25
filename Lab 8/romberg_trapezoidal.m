printf("Romberg Trapezoidal")

function I = romberg_trapezoidal(f, a, b, m, eps)

  R = zeros(m, m);
  h = b - a;
  R(1, 1) = h * 1/2 * (f(a) + f(b));
  # R(2, 1) = 1/2 * (R(1,1) + h/2 * f(a + h/4));

  for k = 2:m
    n = 2^(k-1);

    % compute composite trapezoidal rule approximation with 2^(k-1) subintervals
    R(k, 1) = composite_trapezoidal(f, a, b, n);

    % compute Richardson extrapolation of order k-1
    for j = 2:k
      c = 4^(j-1);
      R(k, j) = (c * R(k, j - 1) - R(k - 1, j - 1)) / (c - 1);
    endfor


  endfor

  I = R(m, m);

endfunction
