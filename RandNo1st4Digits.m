% P486function RandNo1st4Digits(r=1)  n = 4;  r = Random(n,r);   for i = 1:n    x = 10 * r(i);     m(i) = int64(x);     x = x - m(i);   endfor  m
endfunction
