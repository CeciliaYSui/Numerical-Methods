function [S] = Spline_Eval(n,t,y,z,x)  for i = (n):-1:1    if (x - t(i)) >= 0       break     endif  endfor  h = t(i+1) - t(i);   tmp = (z(i)/2) + (x-t(i)) * (z(i+1) - z(i)) / (6*h) ;   tmp = -(h/6) * (z(i+1) + 2 * z(i)) + (y(i+1) - y(i))/h + (x-t(i)) * tmp;   S = y(i) + (x - t(i)) * tmp; 
endfunction
