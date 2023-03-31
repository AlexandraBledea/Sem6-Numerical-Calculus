
"Double one vector's values"

function result = DoubleVector(x)
  m = size(x)(2) * 2;
  t = zeros(1, m);
  for i = 1:m
    idx = ceil(i/2);
    t(i) = x(idx);
  endfor
  result = t;
endfunction

