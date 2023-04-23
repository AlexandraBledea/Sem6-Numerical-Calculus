printf("== Exercise 1\n")


% Define the function and the nodes
f = @(x) sin(x);
x_large = 0 : 0.01 : 2*pi;
y_large = f(x_large);

x = [0, pi/2, pi, 3*pi/2, 2*pi];
y = f(x);

function_value = f(pi/4);

% Calculate the cubic natural spline
spline_natural = csape(x, f(x), 'variational');

% Calculate the cubic clamped spline
d0 = cos(0);
dn = cos(2*pi);

clamped_value = csape(x, y, 'complete', [d0, dn]);

% To evaluate the cubic natural spline and the cubic clamped spline at the value pi/4 we use ppval

natural = fnval(spline_natural, pi/4);
clamped = fnval(clamped_value, pi/4);

% Display the results
fprintf('f(pi/4) = %f\n', function_value);
fprintf('Natural spline(pi/4) = %f\n', natural);
fprintf('Clamped spline(pi/4) = %f\n', clamped);


d = @(x) cos(x);

natural = fnval(spline_natural, x_large);
clamped = fnval(clamped_value, x_large);

% Plot the functions on the same figure
hold on

% Plot the function f(x) = sin(x)
plot(x, y, 'ro');

% Plot the cubic natural spline
plot(x_large, natural);

% Plot the cubic clamped spline
plot(x_large, clamped);



