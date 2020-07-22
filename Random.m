function [x] = Random(n = 100, seed=1)  k = 16807;   j = 2147483647;   for i = 1:n    seed = mod(k*seed, j);     x(i) = seed / j;   endfor  %hist(x)
endfunction
