printf("==Forward substitution")

function result = forward_substitution(A, b)

  n = size(A, 1);
  x = zeros(n, 1);


  x(1) = b(1) / A(1, 1);


  for i = 1:n

    sum = 0;

    for j = 1:i-1

      sum = sum + A(i, j) * x(j);

    endfor

    x(i) = (b(i) - sum)/A(i,i);

  endfor

  result = x;

endfunction


