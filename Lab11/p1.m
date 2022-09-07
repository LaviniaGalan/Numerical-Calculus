A = [3 -1 0 0 0 0;
    -1 3 -1 0 0 0;
    0 -1 3 -1 0 0;
    0 0 -1 3 -1 0;
    0 0 0 -1 3 -1;
    0 0 0 0 -1 3];
    
b = [2 1 1 1 1 2]';
epsilon = 10 ^ (-3);

function [nr_it, x] = jacobi(A, b, epsilon, max_it)
  k = 1;
  n = length(b);
  
  x_prev = zeros(1, n);
  x_current = zeros(1, n);
  
  found = false;
  while not(found) || k > max_it
    for i = 1:n
      s = 0;
      
      for j = 1:i-1
        s += A(i, j) * x_prev(j);
      endfor;
      for j = i+1:n
        s += A(i, j) * x_prev(j);
      endfor;
      
      x_current(i) = (b(i) - s) / A(i, i);
    endfor;
    if norm(x_current .- x_prev) <= epsilon
      found = true;
    else
      k = k + 1;
      x_prev = x_current;
    endif;
  endwhile;
  nr_it = k;
  x = x_current;
endfunction;

[nr_it_jacobi, x_jacobi] = jacobi(A, b, epsilon, 100)


function [nr_it, x] = gauss_seidel(A, b, epsilon, max_it)
  k = 1;
  n = length(b);
  
  x_prev = zeros(1, n);
  x_current = zeros(1, n);
  
  found = false;
  while not(found) || k > max_it
    for i = 1:n
      s = 0;
      
      for j = 1:i-1
        s += A(i, j) * x_current(j);
      endfor;
      for j = i+1:n
        s += A(i, j) * x_prev(j);
      endfor;
      
      x_current(i) = (b(i) - s) / A(i, i);
    endfor;
    if norm(x_current .- x_prev) <= epsilon
      found = true;
    else
      k = k + 1;
      x_prev = x_current;
    endif;
  endwhile;
  nr_it = k;
  x = x_current;
endfunction;

[nr_it_gauss, x_gauss] = gauss_seidel(A, b, epsilon, 100)



function [nr_it, x] = sor(A, b, epsilon, max_it, omega)
  k = 1;
  n = length(b);
  
  x_prev = zeros(1, n);
  x_current = zeros(1, n);
  
  found = false;
  while not(found) || k > max_it
    for i = 1:n
      s = 0;
      
      for j = 1:i-1
        s += A(i, j) * x_current(j);
      endfor;
      for j = i+1:n
        s += A(i, j) * x_prev(j);
      endfor;
      
      x_current(i) = omega / A(i, i) *(b(i) - s) + (1 - omega) * x_prev(i);
    endfor;
    if norm(x_current .- x_prev) <= epsilon
      found = true;
    else
      k = k + 1;
      x_prev = x_current;
    endif;
  endwhile;
  nr_it = k;
  x = x_current;
endfunction;

[nr_it_sor, x_sor] = sor(A, b, epsilon, 100, 1.5)
