function exercise3 ()  x = [-2; -1; 0; 1; 2];   %x = [1; 0; 1];   for k = 1:10    F   %  F = @(x) [(x(1) +x(2) + x(3) - 3); (x(1)^2 + x(2)^2 + x(3)^2 - 5); (e^(x(1)) + x(1)*x(2) - x(1)*x(3) -1)];     J = @(x) [ 1 1 1; 2*x(1)  2*x(2)  2*x(3); e^(x(1))+x(2)-x(3)  x(1)  -x(1)];    H = J(x) \ F(x);     x = x - H;   endfor  x 
endfunction 
