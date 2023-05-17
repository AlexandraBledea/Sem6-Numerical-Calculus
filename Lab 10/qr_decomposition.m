printf("== QR decomposition")

function result = qr_decomposition(A, b)

  [Q, R] = qr(A);
  x = backward_substitution(R, Q' * b);

  result = x;

endfunction
