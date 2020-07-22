% Cecilia Y. Sui % Buffon's Needle Exercise function Needle()  n = 5000;   iprt = 1000;   m = 0;   r = rand(n,2);   for i = 1:n    w = r(i,1);     v = (pi/2) * r(i,2);     if w <= sin(v)      m = m + 1;     endif    if mod(i,iprt) == 0       prob = m / i;       i      prob      2/pi    endif  endfor  
endfunction
