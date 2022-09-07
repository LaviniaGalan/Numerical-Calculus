function Y = fct_lagrange(x, y, X)
  a = fct_a(x);
  n = length(x);
  Y = [];
  for k=1:length(X)
    s1 = 0;
    s2 = 0;
    s1 = sum((a.*y) ./ (X(k) - x));
    s2 = sum(a./(X(k)-x));
    Y = [Y, s1/s2];
  endfor;
end;

