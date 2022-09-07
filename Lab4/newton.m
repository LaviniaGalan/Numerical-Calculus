function Y = newton(x, y, X)
  n = length(X);
  m = length(x);
  
  Y = [];
  
  div_diff = divided_diff(x, y);
  
  for k = 1:n
    res = y(1);
    
    p = 1;
    for i = 2:m
      p = p * (X(k) - x(i-1));
      res = res + p * div_diff(1, i);
    endfor;
    
    Y = [Y res];
  endfor;
endfunction;
