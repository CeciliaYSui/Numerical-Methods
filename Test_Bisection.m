function Test_Bisection(f)  nmax = 20;   e = 0.5 * (10^(-6));   a = 0.0;   b = 0.32;   %f = (@(x) x^3 - 3 * x + 1);   Bisection(f, a, b, nmax, e);   %a = 0.5;   %b = 2.0;   %g = (@(x) x^3 - 2 * sin(x));   %Bisection(g, a, b, nmax, e);   return
endfunction
