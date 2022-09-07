
%a)
x_a = [-2 -1 0 1 2];
y_a = 3.^x_a;

function [q, ap] = neville(x, y, X)
  n = length(x);
  
  q = [y', zeros(n, n-1)];
  for i = 2:n
    for j = 2:i
      q(i, j) = ((x(i) - X) * q(i-1, j-1) + (X - x(i-j+1)) * q(i, j-1)) / (x(i) - x(i-j+1));
      
    endfor;
  endfor;
  ap = q(n, n);
  % q = [x', q];
endfunction;

X_a = 1/2;

[q_a, ap] = neville(x_a, y_a, X_a)

%b)
x_b = [0 1 2 4 5];
y_b = sqrt(x_b);

X_b = 3;

[q_b, ap] = neville(x_b, y_b, X_b)

