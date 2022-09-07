f = @(x) (x - cos(x));
f_diff = @(x) (1 + sin(x));

x0 = pi / 4;
epsilon = 10^(-4);
N = 100;

function x_sol = newton(x0, epsilon, N, f, f_diff)
  x = [x0];
  for i=1:N+1
    x_i = x(i);
    new_x = x_i - f(x_i) / f_diff(x_i);
    x = [x new_x];
    if abs(x(i+1) - x(i)) <= epsilon
      x_sol = x(i+1);
      return;
    endif;
  endfor;
  x_sol = x(N+1);
endfunction;

x = newton(x0, epsilon, N, f, f_diff)