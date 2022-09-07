A = [3 1 1;
     -2 4 0;
     -1 2 -6];

b = [12 2 -5]';

epsilon = 10^(-5);

D = diag(diag(A));
L = tril(A, -1);
U = triu(A, 1);

function [nr_it, x] = jacobi_matriceal(D, L, U, b, epsilon, max_it)
  k = 1;
  n = length(b);
  
  x_prev = zeros(n, 1);
  x_current = zeros(n, 1);
  
  found = false;
  iD = inv(D);
  T1 = - iD * (L + U);
  
  while not(found) || k > max_it
    x_current = T1 * x_prev + iD * b;
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

[nr_it_jacobi, x_jacobi] = jacobi_matriceal(D, L, U, b, epsilon, 100)


function [nr_it, x] = gauss_seidel_matriceal(D, L, U, b, epsilon, max_it)
  k = 1;
  n = length(b);
  
  x_prev = zeros(n, 1);
  x_current = zeros(n, 1);
  
  found = false;
  iDL = inv(D + L);
  T1 = - iDL * U;
  
  while not(found) || k > max_it
    x_current = T1 * x_prev + iDL * b;
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

[nr_it_gauss, x_gauss] = gauss_seidel_matriceal(D, L, U, b, epsilon, 100)


function [nr_it, x] = sor_matriceal(D, L, U, b, epsilon, max_it, omega)
  k = 1;
  n = length(b);
  
  x_prev = zeros(n, 1);
  x_current = zeros(n, 1);
  
  found = false;
  iDL = inv(D + omega * L);
  T1 = (1 - omega) * D - omega * U;
  T2 = iDL * T1;
  
  while not(found) || k > max_it
    x_current = T2 * x_prev + iDL * omega * b;
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

[nr_it_sor, x_sor] = sor_matriceal(D, L, U, b, epsilon, 100, 0.5)



