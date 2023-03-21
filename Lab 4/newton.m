

function retval = newton(x, f, xx)

  # We compute all the divided differentiates
  t = diff(x, f);

  n = length(x);
  m = length(xx);

  p = ones(1, m);

  # We initialize the result sum with 0
  s = 0;

  for j = 1:m
    for i = 1:n
      # We compute: (x - x0), then (x - x0) * (x - x1) and so on
      s(j) = s(j) + p(j) * t(1, i + 1);
      p(j) = p(j) * (xx - x(i))
    endfor
  endfor

  retval = s;

endfunction


