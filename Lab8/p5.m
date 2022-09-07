a = 0;
b = pi;

f = @(x) 1./(4 + sin(20*x));

approx1 = RSF(f, a, b, 10)
approx2 = RSF(f, a, b, 30)
