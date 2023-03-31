" Compute Hermite polynomial value"

function result = Hermite(x, y, firstRow, xx)

  m = length(x);

  fx0 = y(1);

  for i = 1: m - 1
    prod = 1;
    for j = 1:i
      prod = prod .* (xx - x(j));
    endfor

    prod = prod .* firstRow(i);
    fx0 = fx0 + prod;
  endfor

    result = fx0;

endfunction
