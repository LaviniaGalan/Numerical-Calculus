f = @(t) (exp(-t.^2));

a = 0;
b = 0.5;
res = 0.520499876;

approx1 = RSF(f, a, b, 4)
erf1 = 2/sqrt(pi) * approx1
err1 = abs(res - erf1)

approx2 = RSF(f, a, b, 10)
erf2 = 2/sqrt(pi) * approx2
err2 = abs(res - erf2)
