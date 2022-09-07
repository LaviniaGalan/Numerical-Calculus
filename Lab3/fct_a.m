function A = fct_a(x)
  n = length(x);
  a = [];
  for i=1:n
    pr = 1;
    for j=1:n
      if i!=j
        pr = pr * (x(i) - x(j));
      endif;
    endfor;
    a = [a, 1/pr];
  endfor;
  
  A = a;
end;