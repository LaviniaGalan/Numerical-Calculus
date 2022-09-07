f = @(x) (x^3 - x^2 - 1);

x0 = 1;
x1 = 2;
epsilon = 10^(-4);
N = 100;

function x_sol = secant(x0, x1, epsilon, N, f)
  x = [x0 x1];
  for i=2:N+1
    x_i = x(i);
    x_im1 = x(i-1);
    new_x = x_i - f(x_i) * (x_i - x_im1)/ (f(x_i) - f(x_im1));
    x = [x new_x];
    if abs(x(i+1) - x(i)) <= epsilon
      x_sol = x(i+1);
      return;
    endif;
  endfor;
  x_sol = x(N+1);
endfunction;

x = secant(x0, x1, epsilon, N, f)