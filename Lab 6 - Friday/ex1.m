printf("== Exercise 1\n")


% Define the function and the nodes
f = @(x) sin(x);
x_large = 0 : 0.01 : 2*pi;
y_large = f(x_large);

x = [0, pi/2, pi, 3*pi/2, 2*pi];
y = f(x);

function_value = f(pi/4);

% Calculate the cubic natural spline
natural_value = spline(x, f(x));

% Calculate the cubic clamped spline
d0 = cos(0);
dn = cos(2*pi);

clamped_value = spline(x, [d0, y, dn]);

% To evaluate the cubic natural spline and the cubic clamped spline at the value pi/4 we use ppval

cubic = ppval(natural_value, pi/4);
clamped = ppval(clamped_value, pi/4);

% Display the results
fprintf('f(pi/4) = %f\n', function_value);
fprintf('Natural spline(pi/4) = %f\n', cubic);
fprintf('Clamped spline(pi/4) = %f\n', clamped);


% Plot the functions on the same figure
hold on

% Plot the function f(x) = sin(x) where x = the nodes
plot(x, y, 'ro');

% Plot the cubic natural spline
plot(x_large, spline(x, y, x_large));

% Plot the cubic clamped spline
plot(x_large, spline(x, [d0 y dn], x_large));



