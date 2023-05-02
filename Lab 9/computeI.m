printf("== computeI")

function result = computeI(J, d, n, a, f)

  I = 0;

  for i = 1:n
    I = I + f(d(i))* a(i);
  endfor

  result = I;

endfunction



