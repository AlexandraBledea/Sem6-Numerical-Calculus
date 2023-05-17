printf("== Exercise 1")

n = 5

A = 5*eye(n) - diag(ones(n-1, 1), -1) - diag(ones(n-1, 1),1)
b = 3 * ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n)

gaussian_elimination(A, b)
lup_factorization(A, b)
cholesky_factorization(A, b)
qr_decomposition(A, b)
