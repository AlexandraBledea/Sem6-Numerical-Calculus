printf("== Exercise 3\n")

time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];

t = 10

pos = spline(time, [75 distance 72]);
sp = ppder(pos);

ppval(pos, t)
ppval(sp, t)
