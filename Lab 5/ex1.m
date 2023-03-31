printf("== Exercise 1\n");

time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];
t1 = 10;
t2 = 10.0004;

x = DoubleVector(time);
first = FirstRowDivDiff(x, distance, speed);
hermite_1 = Hermite(x, distance, first, t1);
hermite_2 = Hermite(x, distance, first, t2);


printf("distance_1(%f) = %f\n", t1, hermite_1);
printf("distance_2(%f) = %f\n", t2, hermite_2);

result = (hermite_2 - hermite_1) / (t2 - t1)
