printf("Rectangle mid-point rule")

function I = rectangle_midpoint(f, a, b)
  I = (b-a) * f((a+b)/2);
endfunction
