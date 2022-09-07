function approx = RTF(n, f, a, b)
  h = (b - a) / n;
  k = 0:n;
  xk = a + h * k;
  
  approx = (b - a)/(2 * n) * (f(a) + f(b) + 2 * sum(f(xk(2:n))));
endfunction;