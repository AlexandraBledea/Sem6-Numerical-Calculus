function retval = aitkens(x, y, xx, eps)

  m = length(x);
  aitk = zeros(m, m);
  done = 0;

  # We initialize the first column with the values of F in the points x
  for i = 1 : m
    aitk(i, 1) = y(i);
  endfor

  aitk

  j = 2

  while(done == 0)

    if(j == m + 1)

      j = m;
      done = 1;
      printf("Stopped by exhaustion\n");

    else

      for i = j:m
        aitk(i, j) = 1 / (x(i) - x(j - 1)) * (aitk(i, j - 1) * (xx - x(j - 1)) - (aitk(j - 1, j - 1)  * (xx - x(i))));
      endfor

      if(abs(aitk(j,j) - aitk(j - 1, j - 1)) <= eps)
        done = 1;
        printf("Ended by epsilon\n");
      endif

      j = j + 1;

    endif

    aitk

  endwhile

  retval = aitk(j - 1, j - 1);
endfunction





