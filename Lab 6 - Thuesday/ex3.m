printf("== Exercise 3\n")

time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];

t = 10

pos = csape(time, distance, 'complete', [75, 72]);
sp = ppder(pos);

fnval(pos, t)
fnval(sp, t)
