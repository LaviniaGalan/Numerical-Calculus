function divided_diff_table = divided_diff(z, fz, f_deriv)
  n = length(z) / 2;

  divided_diff_table = [fz, zeros(2*n, 2*n-1)];
  
  for i = 1:n
    divided_diff_table(2*i-1, 2) = f_deriv(i);
    if i != n
      divided_diff_table(2*i, 2) = (fz(2*i+1) - fz(2*i)) / (z(2*i+1) - z(2*i));
    endif
  endfor;
  
  for j=3:2*n
    for i=1:2*n-j+1
      divided_diff_table(i, j) = (divided_diff_table(i+1, j-1) - divided_diff_table(i, j-1)) / (z(i+j-1)-z(i));
    endfor;
  endfor;
end;