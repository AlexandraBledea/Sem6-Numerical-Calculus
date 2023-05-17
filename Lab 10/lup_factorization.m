printf("==Lup Factorization")

function result = lup_factorization(A, b)

  [L, U, P] = lu(A);
  y = forward_substitution(L, P * b);
  x = backward_substitution(U, y);

  result = x;

endfunction


