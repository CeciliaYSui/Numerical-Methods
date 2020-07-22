% Cecilia Y. Sui % Homework #7  Question #1% Pseudorandom number generator [0,100] 1000 times function myRandom(n = 1000, seed = 1)  k = 16807;  j = 2147483647;   x = zeros(n,1);   for i = 1:(n+1)    seed = mod (k*seed, j);     if (i>1)      x(i-1) = int16(100* seed/j);  % avoid the first 0 value     endif   endfor  hist(x)  %hist(x,50)  %x
endfunction
