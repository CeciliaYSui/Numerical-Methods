function powerMethod(kmax = 20)  A = [3 1; 1 3];   x = [0;1];   for i = 1: kmax    y = A * x;     r = y(2)/x(2);     x = y/norm(y);  % avoid large values for x vector     i    x    y    r  endfor
endfunction
