printf("== Exercise 5\n")

n1 = 2;
n2 = 8;

f = @(x)(x^2);

printf("For n = 2\n")

J = computeJacobian(n1, 2, 0);
v = computeEigenVectors(J);
d = computeEigenValues(J);

a = computeAk(v, 2, n1, 1);
I = computeI(J, d, n1, a, f)


printf("For n = 8\n")

J2 = computeJacobian(n2, 2, 0);
v2 = computeEigenVectors(J2);
d2 = computeEigenValues(J2);

a2 = computeAk(v2, 2, n2, 1);
I2 = computeI(J2, d2, n2, a2, f)
