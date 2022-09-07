epsilon = 10 ^ (-3);

a = 1;
b = 2;

f = @(x) (x .* log(x));

% f'' = 1/x

fd = @(x) (-1 / x);

m2f = fminbnd(fd, a, b)

% solve (b - a)^3 / (12n^2)*m2f < epsilon

term = (b - a)^3 / 12 * m2f / epsilon

% n^2 > term, n > 0 => n > sqrt(term)

n = ceil(sqrt(term))
 
approx = RTF(n, f, a, b)