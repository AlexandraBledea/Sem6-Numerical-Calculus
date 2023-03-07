% First we define a function for the formula
# Tn(x) = 2xTn-1(x)-Tn-2(x)
# n = 0 => T0(x)=1
# n = 1 => T1(x) = x

function c = chebyshev (n, x)
  if n == 0
    c = 1;
  elseif n == 1
    c = x;
  else
    c = 2 * x .* chebyshev(n-1,x) - chebyshev(n-2,x);
  endif
endfunction
