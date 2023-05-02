printf("== Exercise 1\n")

n1 = 2;
n2 = 8;

f = @(x)(1);

printf("For n = 2\n")

J = computeJacobian(n1, 5, 0);
v = computeEigenVectors(J);
d = computeEigenValues(J);

a = computeAk(v, 5, n1, 0);

I = computeI(J, d, n1, a, f)


printf("For n = 8\n")

J2 = computeJacobian(n2, 5, 0);
v2 = computeEigenVectors(J2);
d2 = computeEigenValues(J2);

a2 = computeAk(v2, 5, n2, 0);

I2 = computeI(J2, d2, n2, a2, f)
