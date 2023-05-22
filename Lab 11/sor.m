function [T c] = sor(D, U, L, b)

  T = inv(D) * (-1) * (L + U);

  omega = 2 / (1 + sqrt(1 - (max(abs(eig(T)))^2)))

  a = inv((1/omega) * D - L)

  T = a * (((1-omega)/omega) * D + U);
  c = a * b;

endfunction
