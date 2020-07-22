% l0 is any integer such that 1 < l0 < 2^31 - 1function LCMRandomNo (l0 = 2, n = 10)  l = zeros(n+1);   l(1) = l0;   for i = 2:(n+1)    l(i) = mod ((7^5 * l(i-1)), (2^31 -1));    x(i-1) = l(i) / (2^31 -1); 
  endfor  x  
endfunction
