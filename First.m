function First()  n = 30;   x = 0.5;   h = 1;   emin = 1;   for i = 1:n    h = 0.25 * h;     y = (sin(x+h) - sin(x)) / h;     error = abs(cos(x) - y);     i    h    y    error     if error < emin      emin = error;       imin = i;     endif  endfor   error  y  imin  emin
endfunction
