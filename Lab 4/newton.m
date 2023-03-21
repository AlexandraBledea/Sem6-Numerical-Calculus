

function retval = newton(x, f, xx)

  n = length(x);
  m = length(xx);

  t = zeros(1, m);

  # We compute all the divided differentiates
  for i = 1:m
    t(1, i) = diff(x(i), f)
  endfor

  p = ones(1, m);

  # We initialize the result sum with 0
  s = 0;

  for j = 1:m
    for i = 1:n
      # We compute: (x - x0), then (x - x0) * (x - x1) and so on
      s(j) = s(j) + p(j) * t(1, i + 1);
      p(j) = p(j) * (xx(j) - x(i));
    endfor
  endfor

  retval = s;

endfunction


