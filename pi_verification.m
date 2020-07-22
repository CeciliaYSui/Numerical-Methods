% Cecilia Y. Sui% Homework #7 Question #3 % Pi estimation function pi_verification ()  f = @(x) (4-x^2)^(0.5);  n = 2500;   r = Random(n,1);   sum = 0;   for i = 1:n    x = 2 * r(i);     sum = sum + f(x);   endfor    result = 2 * sum / n;     result
endfunction
