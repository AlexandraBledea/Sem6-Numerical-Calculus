printf("== computeEigenVectors")

function result = computeEigenVectors(J)

  [v, d] = eig(J);
  result = v;

endfunction



