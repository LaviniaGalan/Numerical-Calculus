function r = hermite(mat, X)

##  n = length(x);
##  d0 = zeros(2 * n, 1);
##  d1 = zeros(2 * n, 1);
##  
##  for i = 2:2:2*n
##    d0(i, 1) = x(i/2);
##    d0(i - 1, 1) = x(i/2);
##    d1(i, 1) = y(i/2);
##    d1(i - 1, 1) = y(i/2);
##  endfor;
##  
##  m = zeros(2*n, 2*n);
##  m
  
  % mat = x0 f(x0) f'(x0) ...
  %       x1 f(x1) f'(x1) ...
  %       ...
  
  x = mat(:, 1);
  [m, l] = size(mat)
  
  r = zeros(1, m);
  for i = 1:m
    for j = 2:l
      if mat(i, j) != NaN
        r(i) = r(i) + 1;
      else
        break
      endif;
    endfor;
    
  r = r - 1;
  
  endfor;
  
  r
  
endfunction;




