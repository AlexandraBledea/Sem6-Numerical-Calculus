

function retval = newtonForAValue(x, f, xx)

  # We compute all the divided differentiates
  t = diff(x, f);

  n = length(x);

  p = ones(1, 1);

  # We initialize the result sum with 0
  s = 0;
    for i = 1:n
      # We compute: (x - x0), then (x - x0) * (x - x1) and so on
      s = s + p * t(1, i + 1);
      p = p * (xx - x(i))
    endfor

  retval = s;

endfunction


