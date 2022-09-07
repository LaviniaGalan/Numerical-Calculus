function res = gauss(n, A, b)
  for p = 1:n-1
    max_value_on_col = max(abs(A(p:n,p)));
    
    if max_value_on_col == 0
      display("no solution"); return;
    endif;
    
    for i = p:n
      if abs(A(i, p)) == max_value_on_col
        q = i;
        break;
      endif;
    endfor;
    
    if q != p
      % interchange lines p and q in A and in b
      aux = A(p, :);
      A(p, :) = A(q, :);
      A(q, :) = aux;
      
      aux_b = b(p);
      b(p) = b(q);
      b(q) = aux_b;
    endif;
    % display(A);
    
    % transform A for obtaining zeros on column p, below a(p, p)
    for j = p+1 : n
      current_val = A(j, p);
      coeff = current_val / A(p, p);
      A(j, :) = A(j, :) .- coeff * A(p, :);
      
      % display(A);
      b(j) = b(j) - coeff * b(p);
    endfor;
    % display(sprintf("\n p = %d", p));
  endfor;
  
  if A(n, n) == 0
    display("no solution"); return;
  endif;
  
  x = ones(1, n);
  x_n = b(n) / A(n, n);
  x(n) = x_n;
  
  for i = n-1:-1:1
    coeff_x_i = A(i, i);
    other = sum(A(i, i+1:n) .* x(1, i+1:n));
    x_i = (b(i) - other) / coeff_x_i;
    x(i) = x_i;
  endfor;
  
  res = x;
endfunction
