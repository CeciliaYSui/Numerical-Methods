function [d] = Derivative(f, x, n, h)  d = zeros(n,n);   for i = 1:n    d(i,1) = (f(x+h) - f(x-h)) / (2*h);     for j = 2:i      d(i,j) = d(i, j-1)  + (d(i,j-1) - d(i-1, j-1)) / (4^(j-1) - 1);     endfor     h = h/2;   endfor 
endfunction
