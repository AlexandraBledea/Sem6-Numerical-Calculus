function [x nit] = general_compute(A, b, x0, method, err, maxnit)

  D = diag(diag(A));
  U = triu(A, 1);
  L = tril(A, -1);

  L *= -1;
  U *= -1;

  [T c] = method(D, U, L, b);

  x = x0;

  for k  = 1:maxnit

    x = T * x0 + c;

    if norm(x-x0) <= ((1 - norm(T, inf)) / norm(T, inf)) * err

      nit = k;
      return

    endif

    x0 = x;
  endfor

  error("Maximum number of iterations was exceeded!")

endfunction
