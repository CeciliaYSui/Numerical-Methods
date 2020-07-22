% Cecilia Y. Sui % Homework #8 % Implement Steepest Descent Procedure (Ch13)% April 16, 2019% f = @(x,y) 25 .* x.^2 + y.^2, x0 = 1, y0 = 1   % g = @(x,y) 50 .* x .+ 2 .* y; % phi = @(x,t) f(x + t * g(x)); % % f = @(x,y) (e.^x) .* (cos(x.*y).^2), x0 = -1, y0 = -1function steepest_descent2 ()  F = @(m,n) 25*m^2 + n^2;  G = @(m,n) 50*m+ 2*n;  phi = @(x,t) f(x + t * g(x));   a = 0; % start of interval   b = 1; % end of interval   epsilon = 0.000001;               % accuracy value  iter = 50;                       % maximum number of iterations  r = double (1 / ((sqrt(5)+1)/2));      % golden proportion coefficient, around 0.618  k = 0;                            % number of iterations  x =a+r*(b-a);             % computing x values  y =a+r^2*(b-a);        % compute y values   u = f(x);   v = f(y);     while ((abs(b-a)>epsilon) && (k<iter))    k = k + 1;     if u > v      b = x;       x = y;       u = v;       y = a + r^2 * (b-a);       v = f(y);     else       a = y;       y = x;       v = u;       x = a + r * (b-a);       u = f(x);     endif   endwhile  u   vendfunction