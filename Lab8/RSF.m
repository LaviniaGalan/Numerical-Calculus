function approx = RSF(f, a, b, n)
  h = (b - a) / n;
  k = 0:n;
  xk = a + h * k;
  
  yk = [];
  for i = 1:length(xk) - 1
    yk(i) = (xk(i) + xk(i + 1)) / 2;
  endfor;
  
  approx = (b - a)/(6 * n) * (f(a) + f(b) + 2 * sum(f(xk(2:n))) + 4 * sum(f(yk)));
endfunction;