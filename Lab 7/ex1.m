printf("== Exercise 1\n")

time = [1, 2, 3, 4, 5, 6, 7]
temperature = [13, 15, 20, 14, 15, 13, 10]
t = 8

p = polyfit(time, temperature, 1)

a = p(1)
b = p(2)

printf("f(x) = %f*x + %f", a, b);

approximation = polyval(p, t)


plot(time, temperature, 'r*')

hold on;


# version 1
f = a*time + b
plot(time, polyval(p, time), 'b')

# version 2 - not sure which is good
x = 0 : 0.01 : 8
f = a*x + b

plot(x, polyval(p, x), 'g')




