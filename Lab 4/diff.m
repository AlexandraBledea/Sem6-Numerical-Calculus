x = [2, 4, 6, 8]
f = [4, 8, 14, 16]

function retval = diff(x, f)
  n = length(x);

  # We initialize the result matrix.
  # On the first row we will have Xs values
  # On the second row we will have F(x)s values
  t = [x ; f];

  # We compute all the values for a column of type( d1 fi), (d2 fi) etc and place the result on a row
  for i = 2:n
    new_t = [];

    for j = 1:n - i + 1
      new_t = [new_t (t(i, j + 1) - t(i, j)) / (t(1, j + i - 1) - t(1, j))];
    endfor

    new_t = [new_t zeros(1, i - 1)];
    t = [t ; new_t];

  endfor

  retval = t';
endfunction


