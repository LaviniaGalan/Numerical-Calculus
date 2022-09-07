
function divided_diff = f5(x, f)
  n = length(x);
  divided_diff = [f', zeros(n, n-1)];
  
  for j=2:n
    for i=1:n-j+1
      divided_diff(i, j) = (divided_diff(i+1, j-1) - divided_diff(i, j-1)) / (x(i+j-1)-x(i));
    endfor;
  endfor;
end;


x = [2 4 6 8];
f = [4 8 14 16];

divided_diff = f5(x, f)
