function [T c] = jacobi(D, U, L, b)

  T = inv(D) * ( L + U);
  c = inv(D) * b;

endfunction
