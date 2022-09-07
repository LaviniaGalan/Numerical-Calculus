f = @(x) (x - 0.8 * sin(x) - 2*pi/10);
f_diff = @(x) (1 - 0.8 * cos(x));

x0 = 1;
epsilon = 10^(-4);
N = 6;

function x_sol = newton(x0, epsilon, N, f, f_diff)
  x = [x0];
  for i=1:N+1
    x_i = x(i);
    new_x = x_i - f(x_i) / f_diff(x_i)
    x = [x new_x];
  endfor;
  x_sol = x(N+1);
endfunction;

x = newton(x0, epsilon, N, f, f_diff)