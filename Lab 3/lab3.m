format long

"Lagrange compute barycentric weights."

function result = computeBaryWeights(x, i, n)
  product = 1;

  for j=1:n

    if (i != j)
      product = product * (x(i) - x(j));
    endif

  endfor

  result = 1 ./ product;
endfunction

"Lagrange interpolation function"

function L = lagrance(x, y, xx)

  # xx - contains the values for which we want to find the approximation

  m = length(x);

  # We initialize the matrix for the weights with 0
  weights = zeros(1, m);

  # We compute all the weights
  for i = 1 : m
    weights(1, i) = computeBaryWeights(x, i, m);
  endfor

  # We take the length of the result so we know how many values we need to approximate
  N = length(xx);

  # We initialize the matrix for result with 0 - here we will keep the approximations
  L = zeros(1, N);

  for j = 1:N

    numerator  = 0;
    denominator = 0;

    for i = 1:m
      # We compute the weights and each the numerator and denominator

      numerator = numerator + weights(i) * y(i) / (xx(j) - x(i));

      denominator = denominator + weights(i) / (xx(j) - x(i));

    endfor

    L(j) = numerator/denominator;

  endfor
endfunction

# Exercise 1

x=[1930, 1940, 1950, 1960, 1970, 1980];
y=[123203, 131669, 150697, 179323, 203212, 226505];
xx=[1955,1995];

round(lagrance(x,y,xx))


# Exercise 2

x = [81, 100, 121];
y = [9, 10, 11];
xx = [115];

# real value
sqrt(xx)

# approximation
lagrance(x, y, xx)


#Exercise 3

# We define the function f
f = @(x) (1 + cos(pi*x)) ./ (1 + x);



# Here we defined the initial function on 1000 points and plotted it
x = linspace(0, 10, 1000);
y = f(x);
plot(x, y)

hold on;

# Then, we represented the function on 21 equidistant points between the interval 0, 10
xx = linspace(0, 10, 21);
y2 = f(xx);

# The approximation we wanted is on those many points from x
L = lagrance(xx, y2, x);
plot(x, L)




# FACULTATIVE

#1

# Implementation of li(x)

function result = computeLi(x, xx, ii)

  n = length(xx);
  m = length(x);

  result = zeros(1, n);

  fraction = 0;

  for j=1:n

    product = 1;

    for i = 1:m

      if(i != ii)

        numerator = xx(j) - x(i);
        denominator = x(ii) - x(i);

        fraction = numerator / denominator;

        product = product * fraction;


        endif


    endfor

      result(j) = product;

  endfor

endfunction

# Implementation of Lagrange simple

function result = computeLagrance(x, y, xx)

  n = length(x);
  m = length(xx);

  result = zeros(1, m);
  lis = zeros(1, n);

  for i = 1:n
    lis(i) = computeLi(x, xx, i)
  endfor

  for j = 1:m
    sum = 0;
    for i = 1:n

      sum = sum + lis(i) * y(i);

    endfor

    result(j) = sum;

  endfor
endfunction

x = linspace(-pi/4, pi/2, 1000);

x = -pi/4 : 0.01 : pi/2;

# We define the function f
f = @(x) (cos(x));
y = f(x);

# plot(x, y)

hold on;

x1 = [0, pi/4, pi/3]

y2 = f(x1);


# subpoint a)

r1 = computeLi(x1, x, 1)
r2 = computeLi(x1, x, 2)
r3 = computeLi(x1, x, 3)

plot(x, r1)
plot(x, r2)
plot(x, r3)


# subpoint b)
xx = [pi/6]
resultLagrangeSimple = computeLagrance(x1, y2, xx)
resultBarycentric = lagrance(x1, y2, xx)

# subpoint c)
resultLagrangeSimple=zeros(1,length(x));
for i=1:length(x)

resultLagrangeSimple(i) = computeLagrance(x1, y2, x(i));
endfor
plot(x, y)
hold on
plot(x, resultLagrangeSimple)


