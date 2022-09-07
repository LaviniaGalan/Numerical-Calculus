a = 0;
b = 2*pi;

r = 110;
p = 75;

f = @(x) (1 - (p/r)^2 * sin(x)).^(1/2);

n1 = 2;
approx1 = RTF(n1, f, a, b)
h1 = 60*r/(r^2 - p^2) * approx1

n2 = 4;
approx2 = RTF(n2, f, a, b)
h2 = 60*r/(r^2 - p^2) * approx2