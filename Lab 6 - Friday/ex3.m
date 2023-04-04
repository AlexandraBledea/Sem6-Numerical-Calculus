printf("== Exercise 3\n")

T = [0,10,20,30,40,60,80,100];
P = [0.0061,0.0123,0.0234,0.0424,0.0738,0.1992,0.4736,1.0133];

% a)

p1 = polyfit(T, P, 1);
approx_1 = polyval(p1, 45);

fprintf('Approximation of pressure P at T = %f is: %f\n', 45, approx_1);

% b)

p2 = polyfit(T,P,2)
p3 = polyfit(T,P,3)

approx_2 = polyval(p2, 45);
approx_3 = polyval(p3, 45);

fprintf('Approximation for p2 is: %f\n', approx_2);
fprintf('Approximation for p3 is: %f\n', approx_3);


% c)

actual = 0.095848;

fprintf('Error for p1 is: |actual - approx_1| = %f\n', abs(actual - approx_1));
fprintf('Error for p2 is: |actual - approx_2| = %f\n', abs(actual - approx_2));
fprintf('Error for p3 is: |actual - approx_3| = %f\n', abs(actual - approx_3));


% d)

hold on
xp = [0:0.01:100];

plot(T, P, 'rp');

plot(xp, polyval(p1, xp), 'b-');
plot(xp, polyval(p2, xp), 'g-');
plot(xp, polyval(p3, xp), 'k-');


