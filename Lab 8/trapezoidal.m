printf("Trapezoidal rule")

function I = trapezoidal(f, a, b)
  I = (b-a)/2 * (f(a)+f(b));
endfunction



