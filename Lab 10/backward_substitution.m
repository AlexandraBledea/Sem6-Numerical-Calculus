printf("==Backward substitution")

function result = backward_substitution(A, b)

  n = size(A, 1);
  x = zeros(n, 1);


  x(n) = b(n) / A(n, n);

  for i = n-1:-1:1

    sum = 0;

    for j = i + 1:n

      sum = sum + A(i, j) * x(j);

    endfor

    x(i) = (b(i) - sum) / A(i, i);

  endfor

  result = x;

endfunction


