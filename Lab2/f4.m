function finite_diff = f4(x, f)
  n = length(x);
  finite_diff = [f', zeros(n, n-1)];
  
  for j=2:n
    for i=1:n-j+1
      finite_diff(i, j) = finite_diff(i+1, j-1) - finite_diff(i, j-1);
    endfor;
  endfor;
  
end;

h = 0.25;
i = 0:6;
x = 1 + i.*h;

f = sqrt(5*x.^2 + 1);

finite_diff = f4(x, f)
  