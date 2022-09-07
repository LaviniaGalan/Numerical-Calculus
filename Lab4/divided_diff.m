function divided_diff_table = divided_diff(x, f)
  n = length(x);
  divided_diff_table = [f', zeros(n, n-1)];
  
  for j=2:n
    for i=1:n-j+1
      divided_diff_table(i, j) = (divided_diff_table(i+1, j-1) - divided_diff_table(i, j-1)) / (x(i+j-1)-x(i));
    endfor;
  endfor;
end;