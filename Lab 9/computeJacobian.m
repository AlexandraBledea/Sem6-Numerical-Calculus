printf("== Jacobian Matrix")

function result = computeJacobian(n, type, a)

  diag_alpha = zeros(1, n);
  diag_beta = zeros(1, n - 1);

  # Legendre
  if(type == 1)
    beta0 = 2;

    for i = 1:n-1
      diag_beta(1, i) = (4 - i^(-2))^(-1);
    endfor

  elseif(type == 2)

    beta0 = pi;
    beta1 = 1/2;
    diag_beta(1, 1) = beta1;

    for i = 2:n-1
      diag_beta(1, i) = 1/4;
    endfor

  elseif(type == 3)

    beta0 = pi/2;

    for i = 1:n-1
      diag_beta(1,i) = 1/4;
    endfor

  elseif(type == 4)

    for i = 1:n
      diag_alpha(1, i) = 2*(i - 1) + a + 1;
    endfor

    for i = 1:n-1
      diag_beta(1, i) = i*(i+a);
    endfor

  elseif(type == 5)

    for i = 1:n-1
      diag_beta(1, i) = i/2;
    endfor

  end

  J = diag(diag_alpha) + diag(sqrt(diag_beta), -1) + diag(sqrt(diag_beta), 1);

  result = J;
endfunction



