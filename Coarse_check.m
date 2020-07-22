% simulation of coin flipfunction Coarse_check  n = 10000;   m = 0;  r = Random(n,2);   for i = 1:n    if r(i) <= 0.5      m = m + 1;     endif    if mod(i, 1000) == 0      per = 100 * m / i;       i      per    endif  endfor
endfunction
