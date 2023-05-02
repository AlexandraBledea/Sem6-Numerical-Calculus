printf("== comptueAk")

function result = computeAk(v, type, n, b)

  a = zeros(1, n);

  if(type == 1)

    beta0 = 2;
    for i = 1:n
      a(1, i) = beta0 * v(1, i)^2;
    endfor

   elseif(type == 2)

    beta0 = pi;
    for i = 1:n
      a(1, i) = beta0 * v(1,i)^2;
    endfor

  elseif(type == 3)

    beta0 = pi/2;
    for i = 1:n
      a(1, i) = beta0 * v(1,i)^2;
    endfor

  elseif(type == 4)

    beta0 = gamma(1+b);
    for i = 1:n
      a(1, i) = beta0 * v(1,i)^2;
    endfor

  elseif(type == 5)

    beta0 = sqrt(pi);
    for i = 1:n
      a(1, i) = beta0 * v(1,i)^2;
    endfor

  endif

  result = a;

endfunction



