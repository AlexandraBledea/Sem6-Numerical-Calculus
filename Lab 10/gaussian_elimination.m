printf("== Gaussian elimination")

function result = gaussian_elimination(A, b)

  n = size(A, 1);
  x = zeros(n, 1);

  # We find the position of the maximum value from each column
  # We go over each column from 1 to n-1
  for p = 1:n-1

    # q is the position of the pivot
    q = p;

    # We go over each row from p + 1 to n
    for i = p + 1:n
      if (abs(A(q, p)) < abs(A(i, p)))
        q = i;
      endif
    endfor

    # Now we swap the lines

    for j = 1:n
      aux = A(p, j);
      A(p, j) = A(q, j);
      A(q, j) = aux;
    endfor

    # We swap the terms from bias as well
    aux = b(p);
    b(p) = b(q);
    b(q) = aux;


    # Make zeros below the current element
    for i = p + 1: n

      coef = A(i, p) / A(p, p);

      A(i, p:n) = A(i, p:n) - coef * A(p, p:n);
      b(i) = b(i) - coef * b(p);


    endfor


  endfor

  result = backward_substitution(A, b);

endfunction

