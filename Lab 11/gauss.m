function [T c] = gauss(D, U, L, b)

  a = inv(D - L);

  T = a * U;
  c = a * b;

endfunction
