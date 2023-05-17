printf("== Exercise 2")

n=10

A = 5 * eye(n) - diag(ones(n-1, 1), 1) - diag(ones(n-1, 1),-1) - diag(ones (n-3, 1), 3) - diag(ones(n-3, 1), -3);


b = ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n) + triu(ones(n, 1), -2) + tril(ones(n, 1), 3-n);

gaussian_elimination(A, b)
lup_factorization(A, b)
cholesky_factorization(A, b)
qr_decomposition(A, b)
