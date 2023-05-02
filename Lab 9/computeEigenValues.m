printf("== computeEigenValues")

function result = computeEigenValues(J)

  [v, d] = eig(J);
  result = diag(d);

endfunction



