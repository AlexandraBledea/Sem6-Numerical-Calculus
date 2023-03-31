
" Get first row of difided differences table"

function result = FirstRowDivDiff(x, y, xx)
  m = size(x)(2);
  a = zeros(m, m+1);

  # We initialize the first column with the values of x

  for i = 1:m
    a(i, 1) = x(i);
  endfor

  # We initialize the second column with the values of f(x), we sue ceil(i/2),
  # because x has every value doubled.

  for i = 1:m
    a(i, 2) = y(ceil(i/2));
  endfor

  for i = 1: m - 1

    # We compute separatly the values for the third column
    # On odd positions we use f'(x)
    # On even positions we compute the difference as we used (f(xi + 1) - f(xi)) = xi+1 - xi

    if(mod(i, 2) == 1)
      a(i,3) = xx(ceil(i/2));
    else
      a(i, 3) = (a(i + 1, 2) - a(i, 2)) / (x(i + 1) - x(i));
    endif

    # Now we continue to compute the differences in the table as we used to

    for j = 4 : m + 1
      for i = 1 : m - j + 2
        a(i, j) = (a(i + 1, j - 1) - a(i, j - 1)) / (x(i + j - 2) - x(i));
      endfor
    endfor


    # We transpose the values into the result variable, skipping the first two columns
    t = zeros(1, m - 1);
    for i = 1 : m - 1
      t(1, i) = a(1, i + 2);
    endfor

    result = t;

  endfor
endfunction

