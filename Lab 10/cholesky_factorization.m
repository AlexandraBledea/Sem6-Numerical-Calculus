printf("Cholesky factorization")

function result = cholesky_factorization(A, b)

  U = chol(A);
  y = forward_substitution(U', b);
  x = backward_substitution(U, y);

  result = x;

endfunction
