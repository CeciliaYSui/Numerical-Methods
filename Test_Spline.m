function Test_Spline()  t = [-3.7; -2; -1.2; -0.6; 0.7; 1.8; 2.7; 3.4; 3.6; 3.9];  y = [0.4; 3.9; 3.9; 4.8; 4.8; 4.3; 3.8; 2.4; 1.2; 0];  x = -3.7: (3.9+3.7)/100 :3.9;  n = 9;   z = Spline_Coef(n,t,y);     for i = 1:101    Yspline(i) = Spline_Eval(n,t,y,z,x(i));   endfor    hold on  plot(x, Yspline, 'k-', 'LineWidth', 2);   plot(t, y, 'ro', 'LineWidth', 3, 'MarkerSize', 10);   hold off; 
endfunction
