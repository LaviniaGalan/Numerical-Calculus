f = @(x) ((x - 2) ^ 2 - log(x));

a0 = 1;
b0 = 2;
epsilon = 10^(-4);
N = 100;

function x_sol = bisection(a0, b0, epsilon, N, f)
  if f(a0) * f(b0) > 0
    display("error");
    return;
  endif;
  
  a = a0; b = b0;
  for i = 1:N+1
    c = (a + b) / 2;
    if f(a) * f(c) < 0
##      a = a0;
      b = c;
    else
      a = c;
##      b = b0;
    endif;
  
    if abs(f(c)) <= epsilon
      x_sol = c;
      return;
    endif;
##    a0 = a;
##    b0 = b;
    x_sol = c;
  endfor;
  
  x_sol = c;
endfunction;


x_bisection = bisection(a0, b0, epsilon, N, f)



function x_sol = false_position(a0, b0, epsilon, N, f)
  if f(a0) * f(b0) > 0
    display("error");
    return;
  endif;
  
  a = a0; b = b0;
  for i = 1:N+1
    c = (f(b) * a - f(a) * b) / (f(b) - f(a));
    if f(a) * f(c) < 0
##      a = a0;
      b = c;
    else
      a = c;
##      b = b0;
    endif;
  
  if abs(f(c)) <= epsilon
    x_sol = c;
    return;
  endif;
##  a0 = a;
##  b0 = b;
  x_sol = c;
  
  endfor;
  x_sol = c;
endfunction;

x_false_pos = false_position(a0, b0, epsilon, N, f)

