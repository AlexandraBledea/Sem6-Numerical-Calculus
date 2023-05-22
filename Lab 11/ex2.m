n=10

A = 5 * eye(n) - diag(ones(n-1, 1), 1) - diag(ones(n-1, 1),-1) - diag(ones (n-3, 1), 3) - diag(ones(n-3, 1), -3);
b = ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n) + triu(ones(n, 1), -2) + tril(ones(n, 1), 3-n);


[x, nit] = general_compute(A, b, zeros(length(A), 1), @jacobi, 10 ^ -5, 1000)
[x, nit] = general_compute(A, b, zeros(length(A), 1), @gauss, 10 ^ -5, 1000)
[x, nit] = general_compute(A, b, zeros(length(A), 1), @jacobi, 10 ^ -5, 1000)
