function pol = hermite(x, f, f_deriv, X)
  
  m = length(x);
  
  z = zeros(2*m, 1);
  fz = zeros(2*m, 1);
  
  for i = 2:2:2*m
    z(i, 1) = x(i/2);
    z(i-1, 1) = x(i/2);
    fz(i, 1) = f(i/2);
    fz(i-1, 1) = f(i/2);
  endfor;
  
  
  
  div_diff = divided_diff(z, fz, f_deriv);
  
  l = length(X);
  n = 2*m+1;
  
  pol = [];
  for j = 1:l
    p = 1;
    r = f(1);
    for i = 2:n-1
      p = p * (X(j) - z(i-1));
      r = r + p * div_diff(1, i);
    endfor;
    pol = [pol r];
 
  endfor;
  
endfunction;
