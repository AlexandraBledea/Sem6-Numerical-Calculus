printf("Composite Simpson rule")

function I = composite_simpson(f, a, b, n)
  h = (b-a)/n;
  x = linspace(a, b, n + 1);
  y = f(x);


  I = h/3 * (y(1) + y(n + 1) + 2 * sum(y(3:2:n-1)) + 4 * sum(y(2:2:n)));
endfunction


# De ce nu merge daca inversez 4 * si 2* ????????????
