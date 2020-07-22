function [r] = Romberg (f, a, b, n)  h = b - a;   r = zeros(n,n);   r(1,1) = (h/2) * (f(a) + f(b));   for i = 2:n    h = h/2;     sum = 0;     for k = 1:2:(2^(i-1) - 1)      sum += f(a + k * h);     endfor     r(i,1) = 0.5 * r(i-1, 1) + sum * h;    for j = 2:i     r(i,j) = r(i,j-1) + (r(i,j-1) - r(i-1,j-1)) / (4^(j-1) - 1);    endfor  endfor 
endfunction
