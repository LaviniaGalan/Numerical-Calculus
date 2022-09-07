f = @(x) (2./(1+x.^2));
a = 0;
b = 1;

%a)
function i = romberg_trapezium(a, b, f, epsilon)
  h = b-a;
  qt_prev = h/2 * (f(a)+f(b));
  
  k = 1;
  j = 1:2^(k-1);
  qt_current = 1/2 * qt_prev + h/(2^k) * sum(f(a + (2*j - 1)./(2^k) * h));
  
  while abs(qt_current - qt_prev) > epsilon
    qt_prev = qt_current;
    
    k = k + 1;
    j = 1:2^(k-1);
    qt_current = 1/2 * qt_prev;
    qt_current += (h/(2^k)) * sum(f(a + (2*j - 1)./(2^k) * h));

  endwhile;
  i = qt_current;

endfunction;


i1 = romberg_trapezium(a, b, f, 10^(-4))


%b)
function integr = romberg_aitken(a, b, f, epsilon)
  t00 = RTF(1, f, a, b);
  t = [[t00]];
  
  i = 1;
  found = false;
  while not (found)
    new_row = zeros(1, i + 1);
    new_row(1) = RTF(2^i, f, a, b);
    for j=2:i+1
      new_row(j) = (4^(-j + 1) * t(i, j-1) - new_row(j-1)) / (4^(-j + 1) - 1);
    endfor;
    if abs(new_row(i+1) - t(i, i)) <= epsilon
      found = true;
      integr = new_row(i+1);
      return;
    else
    % add a zero column to t and then add the new row
      zero_col = zeros(i, 1);
      t = [t zero_col];
      t = [t; new_row];
      i = i+1;
    endif;
    
  endwhile;
endfunction;
  
i2 = romberg_aitken(a, b, f, 10^(-4))

  
  
  
  
