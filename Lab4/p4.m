ep = 10^(-3);

function [ap, f] = aitken(x, y, X, ep)
  [s, i] = sort(abs(x - X));
  x = x(i);
  y = y(i);
  
  n = length(x);
  ap = NaN;
  
  f = [y', zeros(n, n-1)];
  for i = 2:n
    for j = 2:i
      f(i, j) = 1/(x(i) - x(j-1)) * det([f(j-1, j-1), x(j-1)-X; f(i, j-1), x(i)-X]);
      if j == i
        if abs(f(i,i) - f(i-1, i-1)) <= ep
          ap = f(i, i);
          i
          % f = [x', f];
          return;
        endif;
      endif;
    endfor;
  endfor;
  % f = [x', f];
endfunction;

%x = [100 121 144];
##x = [100 121 144 64 81 169];
##y = sqrt(x);
##X = 115;

x = [0 1 2 4];
y = [1 1 2 5];
X = 3;

[ap, f] = aitken(x, y, X, ep)