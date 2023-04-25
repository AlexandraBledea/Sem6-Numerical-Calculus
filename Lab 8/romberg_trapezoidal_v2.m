printf("Romberg Trapezoidal")


function I = romberg_trapezoidal_v2(f, a, b, eps)

  done = 0;

  prev = composite_trapezoidal(f, a, b, 1)
  i = 2;

  while(done == 0)
    actual = zeros(1, i);
    actual(1) = composite_trapezoidal(f, a, b, i);

    for k = 2 : i

      c = (4 ^ (k-1));
      actual(k) = (c * prev(k - 1) - actual( k - 1)) / (c - 1)

    endfor

    last_prev = prev(i - 1);
    last_actual = actual(i);
    if( abs(last_actual - last_prev <= eps))
      done = 1;
    endif

    prev = actual;
    i = i + 1;
  endwhile

  result = actual(i - 1);

endfunction




